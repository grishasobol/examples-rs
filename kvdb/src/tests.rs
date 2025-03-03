use std::{
    sync::Arc,
    thread::{self, sleep},
    time::Duration,
};

use dashmap::DashMap;
use rocksdb::{Options, DB};
use tempfile::TempDir;

use crate::{OverlayValue, Storage};

fn configure_rocksdb() -> Options {
    let mut opts = Options::default();
    opts.create_if_missing(true);
    opts.increase_parallelism(8);
    opts.set_max_background_jobs(4);
    opts.set_write_buffer_size(64 * 1024 * 1024); // 64 MB
    opts.set_max_write_buffer_number(3);
    opts.set_use_fsync(false);

    opts
}

fn with_databases<F>(opts: Options, f: F)
where
    F: FnOnce(Arc<DB>, Arc<DashMap<Vec<u8>, OverlayValue>>),
{
    let temp_dir = scopeguard::guard(
        TempDir::new().expect("Failed to create a temporary directory"),
        |temp_dir| {
            temp_dir
                .close()
                .expect("Failed to close the temporary directory");
        },
    );

    let db = Arc::new(DB::open(&opts, temp_dir.path()).expect("Failed to open RocksDB"));
    let dash = Arc::new(DashMap::new());

    f(db, dash);
}

#[test]
fn smoke() {
    with_databases(configure_rocksdb(), |db, dash| {
        let storage = Storage::new(db.clone(), dash);

        let hash = storage.db_write(b"hello world");
        let x = storage.db_read(&hash).unwrap();
        assert_eq!(x, b"hello world");

        let hash = storage.kv_write(b"key", b"value");
        let x = storage.kv_read(b"key", Some(&hash)).unwrap();
        assert_eq!(x, b"value");
        let x = storage.kv_read(b"key", None).unwrap();
        assert_eq!(x, b"value");

        storage.commit(|_, _| -> Option<()> { None });
        assert_eq!(
            db.get(Storage::hash(b"hello world").as_ref()),
            Ok(Some(b"hello world".to_vec()))
        );
        assert_eq!(
            db.get(Storage::hash(b"value").as_ref()),
            Ok(Some(b"value".to_vec()))
        );
    });
}

#[test]
fn threads_smoke() {
    with_databases(configure_rocksdb(), |db, dash| {
        let storage = Storage::new(db.clone(), dash);
        let amount = 1000;

        let storage1 = storage.clone();
        let handler1 = thread::spawn(move || {
            for x in 0u32..amount {
                // let duration = rand::random::<u64>() % 100;
                // sleep(Duration::from_millis(duration));
                let bytes = x.to_le_bytes();
                let data = bytes.iter().cycle().take(1024 * 1024).copied().collect::<Vec<_>>();
                storage1.kv_write(bytes.as_slice(), data.as_slice());
            }
            storage1.commit(|_, _| -> Option<()> {
                // let duration = rand::random::<u64>() % 100;
                // sleep(Duration::from_millis(duration));
                // println!(
                //     "thread1 : {:?}",
                //     u32::from_le_bytes(data.try_into().unwrap())
                // );
                None
            });
        });

        let storage2 = storage.clone();
        let handler2 = thread::spawn(move || {
            for x in amount..amount * 2 {
                // let duration = rand::random::<u64>() % 100;
                // sleep(Duration::from_millis(duration));
                let bytes = x.to_le_bytes();
                let data = bytes.iter().cycle().take(1024 * 1024).copied().collect::<Vec<_>>();
                storage2.kv_write(bytes.as_slice(), data.as_slice());
            }
            storage2.commit(|_, _| -> Option<()> {
                // let duration = rand::random::<u64>() % 100;
                // sleep(Duration::from_millis(duration));
                // println!(
                //     "thread2 : {:?}",
                //     u32::from_le_bytes(data.try_into().unwrap())
                // );
                None
            });
        });

        handler1.join().unwrap();
        handler2.join().unwrap();

        // for x in 0u32..2 * amount {
        //     let value = x.to_le_bytes();
        //     let hash = Storage::hash(value.as_slice());
        //     assert_eq!(value.as_slice(), storage.db_read(&hash).unwrap());
        // }
    })
}

#[test]
fn dash_map() {
    let dashmap = Arc::new(DashMap::new());

    let d1 = dashmap.clone();
    let handler1 = thread::spawn(move || {
        for x in 0..100 {
            let duration = rand::random::<u64>() % 100;
            sleep(Duration::from_millis(duration));
            d1.insert(x, x);
        }
        let keys = d1.iter().map(|item| *item.key()).collect::<Vec<_>>();
        for key in keys.into_iter() {
            let duration = rand::random::<u64>() % 100;
            sleep(Duration::from_millis(duration));
            let x = d1.remove(&key);
            println!("thread1 : {:?}", x);
        }
    });

    let d2 = dashmap.clone();
    let handler2 = thread::spawn(move || {
        for x in 100..200 {
            let duration = rand::random::<u64>() % 100;
            sleep(Duration::from_millis(duration));
            d2.insert(x, x);
        }
        let keys = d2.iter().map(|item| *item.key()).collect::<Vec<_>>();
        for key in keys.into_iter() {
            let duration = rand::random::<u64>() % 100;
            sleep(Duration::from_millis(duration));
            let x = d2.remove(&key);
            println!("thread2 : {:?}", x);
        }
    });

    handler1.join().unwrap();
    handler2.join().unwrap();
}

#[test]
fn test() {
    sparse_merkle_tree::SparseMerkleTree::new(root, store)
}
