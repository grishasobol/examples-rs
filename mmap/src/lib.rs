#[test]
fn test() {
    let buf = unsafe {
        libc::mmap(
            0usize as *mut _,
            1024 * 1024 * 1024,
            libc::PROT_READ | libc::PROT_WRITE,
            libc::MAP_ANON | libc::MAP_PRIVATE,
            -1,
            0,
        )
    };

    let mut i = 0;
    loop {
        unsafe {
            *(buf.add(i) as *mut u8) =  i as u8;
            i += 1;
            if i % 0x1000000 == 0 {
                libc::sleep(1);
            }
        }
    }

    // for i in 0..0x100 {
    //     unsafe {
    //         for k in i * 0x10..(i + 1) * 0x10 {
    //             *(buf.add(k * 0x4000) as *mut u8) = (k + i) as u8;
    //         }
    //         libc::sleep(1);
    //         println!("{}", i);
    //     }
    // }
}
