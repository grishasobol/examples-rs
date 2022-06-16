use libc::{c_void, siginfo_t};
extern crate libc;
extern crate nix;

use nix::sys::signal;

static mut MEM: *mut c_void = core::ptr::null_mut();

extern "C" fn handle_sigsegv(x: i32, y: *mut siginfo_t, z: *mut c_void) {
    unsafe {
        println!("Interrupted! {}", x);
        let mem = (*y).si_addr();
        println!("mem = {:?}", mem);
        let ps = page_size::get();
        if mem >= MEM && (MEM as *mut u8).add(ps) >= mem as *mut u8 {
            let _res = libc::mprotect(MEM, ps, libc::PROT_WRITE);
        }
    }
    return;
}

#[test]
fn test1() {
    let mut v = vec![0u8; 0x4000];
    unsafe {
        libc::getpid();
        let x = signal::SigHandler::SigAction(handle_sigsegv);
        let sig_action =
            signal::SigAction::new(x, signal::SaFlags::SA_SIGINFO, signal::SigSet::empty());
        let _x = signal::sigaction(signal::SIGSEGV, &sig_action);
        let _x = signal::sigaction(signal::SIGBUS, &sig_action);

        let ps = page_size::get();
        println!("page size = 0x{:x}", ps);

        let p = v.get_mut(0).unwrap() as *mut u8 as *mut c_void;
        println!("vector begin = {:?}", p);
        let p_middle = (p as *mut u8).add(0x1000);
        println!("vector middle = {:?}", p_middle);

        let page_begin = (((p as usize) / ps) * ps) as *mut c_void;
        println!("page begin = {:?}", page_begin);

        MEM = page_begin;

        let res = libc::mprotect(page_begin, ps, libc::PROT_NONE);
        println!("mprotect result = {}", res);
        if res != 0 {
            let e = errno::errno();
            println!("ERROR {}", e.0);
        }

        *((p as *mut u8).add(0x10)) = 10;
        // *((page_begin as *mut u8).add(0x10000) as *mut u32) = 0xFFFFFFFF;
    }
}

#[test]
fn test2() {
    let ps = page_size::get();
    let mut v = vec![0u8; ps * 3];
    unsafe {
        libc::getpid();
        let x = signal::SigHandler::SigAction(handle_sigsegv);
        let sig_action =
            signal::SigAction::new(x, signal::SaFlags::SA_SIGINFO, signal::SigSet::empty());
        signal::sigaction(signal::SIGSEGV, &sig_action).expect("Cannot set sigaction segv");
        signal::sigaction(signal::SIGBUS, &sig_action).expect("Cannot set sigaction bus");

        println!("page size = 0x{:x}", ps);

        let vec_begin = v.get_mut(0).unwrap() as *mut u8 as *mut c_void;
        println!("vector begin = {:?}", vec_begin);

        let page_addr = ((vec_begin as usize) / ps) * ps;
        let page_begin = (if vec_begin as usize % ps == 0 {page_addr} else {page_addr + ps}) as *mut c_void;
        println!("page begin = {:?}", page_begin);

        MEM = page_begin;

        let res = libc::mprotect(page_begin, 0x1, libc::PROT_NONE);
        if res != 0 {
            println!("mprotect error: {}", errno::errno());
            panic!()
        }

        *((page_begin as *mut u8).add(0x4000)) = 10;
    }
}
