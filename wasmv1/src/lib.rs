#![no_std]

extern crate alloc;

// Import wee_alloc as a global allocator
use wee_alloc::WeeAlloc;

// Set wee_alloc as the global allocator
#[global_allocator]
static ALLOC: WeeAlloc = WeeAlloc::INIT;

use core::panic::PanicInfo;

// Required panic handler
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

use alloc::vec::Vec;

#[unsafe(no_mangle)]
#[inline(never)]
pub extern "C" fn foo(xs: &mut Vec<i8>) {
    xs.sort()
}
