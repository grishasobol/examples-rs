use libc::{c_void, siginfo_t};
extern crate libc;
extern crate nix;

use nix::sys::signal;

extern fn handle_sigsegv(x: i32, y: *mut siginfo_t, z: *mut c_void) {
    unsafe {
        println!("Interrupted! {}", x);
        let mem = (*y).si_addr();
        let page_begin = ((mem as usize) & !0xFFF) as *mut c_void;
        println!("mem = {:?}, page_begin = {:?}", mem, page_begin);
        let _res = libc::mprotect(page_begin, 0x10, libc::PROT_WRITE);
    }
    return;
}

#[test]
fn main() {
    let mut v = vec![0u8; 0x400];
    unsafe {
        libc::getpid();
        let x = signal::SigHandler::SigAction(handle_sigsegv);
        let sig_action = signal::SigAction::new( x,
                                                 signal::SaFlags::SA_SIGINFO,
                                                 signal::SigSet::empty());
        let _x = signal::sigaction(signal::SIGSEGV, &sig_action);


        let p = v.get_mut(0).unwrap() as *mut u8 as *mut c_void;
        println!("vector begin = {:?}", p);
        let p_middle = (p as *mut u8).add(0x1000);
        println!("vector middle = {:?}", p_middle);
        let page_begin = ((p as usize) & !0xFFF) as *mut c_void;
        println!("page begin = {:?}", page_begin);
        // let res = libc::mprotect(page_begin.add(0x1000), 0x1000, libc::PROT_NONE);
        // println!("mprotect result = {}", res);
        // *p_middle = 10;
        // *((p as *mut u8).add(0x10)) = 10;
        *((page_begin as *mut u8).add(0x10000) as *mut u32) = 0xFFFFFFFF;
    }
}
