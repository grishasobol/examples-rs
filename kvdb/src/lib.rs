use std::sync::Arc;

use dashmap::DashMap;
use rocksdb::DB;
use sha2::{Digest, Sha256};

#[cfg(test)]
mod tests;

#[derive(Debug, Clone)]
pub struct OverlayValue {
    data: Vec<u8>,
    hash: H256,
    changed: bool,
}

#[derive(Debug, Clone)]
pub struct Storage {
    db: Arc<DB>,
    overlay: Arc<DashMap<Vec<u8>, OverlayValue>>,
}

pub type H256 = [u8; 32];

impl Storage {
    pub fn new(db: Arc<DB>, overlay: Arc<DashMap<Vec<u8>, OverlayValue>>) -> Self {
        Storage { db, overlay }
    }

    pub fn db_read(&self, hash: &H256) -> Option<Vec<u8>> {
        self.db
            .get(hash.as_slice())
            .expect("Failed to read from RocksDB")
    }

    pub fn db_write(&self, value: &[u8]) -> H256 {
        let hash = Self::hash(value);
        self.db
            .put(hash.as_slice(), value)
            .expect("Failed to write to RocksDB");
        hash
    }

    pub fn kv_read(&self, key: &[u8], hash: Option<&H256>) -> Option<Vec<u8>> {
        if let Some(item) = self.overlay.get(key) {
            Some(item.value().data.clone())
        } else if let Some(hash) = hash {
            if let Some(value) = self.db_read(hash) {
                self.overlay.insert(
                    key.to_vec(),
                    OverlayValue {
                        data: value.clone(),
                        hash: hash.clone(),
                        changed: false,
                    },
                );
                Some(value)
            } else {
                None
            }
        } else {
            None
        }
    }

    pub fn kv_write(&self, key: &[u8], value: &[u8]) -> H256 {
        let hash = Self::hash(value);
        self.overlay.insert(
            key.to_vec(),
            OverlayValue {
                data: value.to_vec(),
                hash,
                changed: true,
            },
        );
        hash
    }

    pub fn commit<T>(self, mut action: impl FnMut(&H256, &[u8]) -> Option<T>) -> Vec<(H256, T)> {
        let keys = self
            .overlay
            .iter()
            .filter_map(|item| item.value().changed.then_some(item.key().clone()))
            .collect::<Vec<_>>();
        let mut results = Vec::new();
        for key in keys {
            let (hash, value) = match self.overlay.remove(&key) {
                Some((_, value)) => (value.hash, value.data),
                None => continue,
            };
            action(&hash, &value).map(|res| results.push((hash.clone(), res)));
            self.db
                .put(&hash, value)
                .expect("Failed to commit to RocksDB");
        }
        results
    }

    fn hash(data: &[u8]) -> H256 {
        let mut hasher = Sha256::new();
        hasher.update(data);
        hasher.finalize().into()
    }
}
