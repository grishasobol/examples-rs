use codec::{Decode, Encode};
use kvdb::H256;
use std::{
    collections::VecDeque,
    marker::PhantomData,
};

type ProgramId = H256;
type UserId = H256;
type MessageId = H256;

trait RuntimeInterface {
    fn db_read(hash: H256) -> Option<Vec<u8>>;
    fn db_write(value: &[u8]) -> H256;
    fn kv_read(key: &[u8], hash: Option<H256>) -> Option<Vec<u8>>;
    fn kv_write(key: &[u8], value: &[u8]) -> H256;
    fn tmp_kv_read(key: &[u8]) -> Option<Vec<u8>>;
    fn tmp_kv_write(key: &[u8], value: &[u8]);
    fn commit_kv_to_db();
}

trait ProgramExecutor {
    fn execute(
        program_id: ProgramId,
        code: &[u8],
        memory_hash: H256,
        message: Message,
    ) -> (Vec<StateChange>, Vec<OuterChange>);
}

#[repr(u32)]
enum TempKVStorage {
    NewMessages = 0,
}

#[repr(u32)]
enum KVStorage {
    ProgramState = 0,
    MessagePayload = 1,
    PageBuff = 2,
    Code = 3,
}

fn storage_key(storage: u32, key: &[u8]) -> Vec<u8> {
    let mut storage_key = storage.to_le_bytes().to_vec();
    storage_key.extend_from_slice(key);
    storage_key
}

#[derive(Clone, Debug, Encode, Decode)]
enum MessageFrom {
    User(UserId),
    Program {
        program_id: ProgramId,
        message_id: MessageId,
    },
}

enum MessageTo {
    User(UserId),
    Program(ProgramId),
}

#[derive(Clone, Debug, Encode, Decode)]
struct Message {
    id: MessageId,
    from: MessageFrom,
    payload: H256,
    gas: u64,
}

#[derive(Clone, Debug, Encode, Decode)]
struct ProgramState {
    code_hash: H256,
    memory_hash: H256,
    message_queue: VecDeque<Message>,
}

enum StateChange {
    UpdatePageBuff(u32, Vec<u8>),
}

enum OuterChange {
    SendMessage {
        payload: Vec<u8>,
        gas: u64,
        to: MessageTo,
    },
}

pub struct GearRuntime<R: RuntimeInterface, E: ProgramExecutor> {
    phantom1: PhantomData<R>,
    phantom2: PhantomData<E>,
}

impl<R: RuntimeInterface, E: ProgramExecutor> GearRuntime<R, E> {
    fn get_program_state(program_id: ProgramId, hash: Option<H256>) -> Option<ProgramState> {
        R::kv_read(
            storage_key(KVStorage::ProgramState as u32, program_id.as_slice()).as_slice(),
            hash,
        )
        .map(|s| Decode::decode(&mut s.as_slice()).expect("Unable to decode program state"))
    }

    fn get_program_new_messages(program_id: ProgramId) -> Vec<Message> {
        R::tmp_kv_read(
            storage_key(TempKVStorage::NewMessages as u32, program_id.as_slice()).as_slice(),
        )
        .map(|s| Decode::decode(&mut s.as_slice()).expect("Unable to decode sent messages"))
        .unwrap_or_default()
    }

    fn get_message_payload(message_id: MessageId, payload_hash: H256) -> Option<Vec<u8>> {
        R::kv_read(
            storage_key(KVStorage::MessagePayload as u32, message_id.as_slice()).as_slice(),
            Some(payload_hash),
        )
    }

    fn get_code(code_hash: H256) -> Option<Vec<u8>> {
        R::kv_read(
            storage_key(KVStorage::Code as u32, code_hash.as_slice()).as_slice(),
            None,
        )
    }

    fn get_page_buff(page_number: u32, page_hash: H256) -> Option<Vec<u8>> {
        R::kv_read(
            storage_key(
                KVStorage::PageBuff as u32,
                page_number.to_le_bytes().as_slice(),
            )
            .as_slice(),
            None,
        )
    }

    pub fn run_batch(
        programs_hash: H256,
        thread_index: u32,
        threads_num: u32,
        mut gas_allowance: u64,
    ) {
        let program_hashes = Vec::<(H256, ProgramId)>::decode(
            &mut R::kv_read(b"programs", Some(programs_hash))
                .expect("Failed to read programs")
                .as_slice(),
        )
        .expect("Unable to decode program hashes");
        let batch_size = program_hashes.len() / threads_num as usize;
        let program_hashes_batch_start = batch_size * thread_index as usize;
        for (state_hash, pid) in program_hashes
            .into_iter()
            .skip(program_hashes_batch_start)
            .take(batch_size)
        {
            let mut state = Self::get_program_state(pid, Some(state_hash))
                .expect("Failed to get program state");
            let sent_messages = Self::get_program_new_messages(pid);
            for m in sent_messages.into_iter() {
                if state.message_queue.iter().find(|x| x.id == m.id).is_none() {
                    state.message_queue.push_back(m);
                }
            }
            let code = Self::get_code(state.code_hash).expect("Failed to get code");
            for message in state.message_queue {
                let (_, _) = E::execute(pid, code.as_slice(), state.memory_hash, message);
            }
        }
    }
}
