use std::vec::Vec;

#[test]
fn test1() {
    unsafe {
        let mut pipefd = [0i32; 2];
        if libc::pipe(pipefd.as_mut_ptr()) != 0 {
            panic!("Could not open a pipe");
        }
        let thread_join_handle = std::thread::spawn(move || {
            let mut x = [0u8; 256];
            let y = libc::read(pipefd[0], x.as_mut_ptr() as *mut libc::c_void, 11);
            if y == -1 {
                let e = errno::errno();
                println!("ERROR {}", e);
            }
            let x = std::str::from_utf8(&x[0..11]).expect("Wow cannot convert u8 array to string");
            println!("In thread get: {}, {}, {:?}, {}", x, x.len(), x, y);
        });

        let x = "Hello world";
        libc::write(pipefd[1], x.as_ptr() as *const libc::c_void, x.len());

        thread_join_handle
            .join()
            .expect("Must be joined successfully");
    }
}

struct Info {
    len: usize,
    back_fd: i32,
    data: *const u8,
}

const INFO_SIZE: usize = core::mem::size_of::<Info>();

#[test]
fn test2() {
    unsafe {
        let mut pipefd = [0i32; 2];
        if libc::pipe(pipefd.as_mut_ptr()) != 0 {
            panic!("Could not open a pipe");
        }

        let mut join_handlers = Vec::new();
        join_handlers.push(std::thread::spawn(move || {
            let mut info = Info {
                len: 0,
                back_fd: 0,
                data: core::ptr::null_mut(),
            };
            loop {
                match libc::read(
                    pipefd[0],
                    &mut info as *mut Info as *mut libc::c_void,
                    INFO_SIZE,
                )
                {
                    -1 => {
                        let e = errno::errno();
                        panic!("Cannot read pipe {}", e);
                    },
                    0 => break,
                    x => {
                        if x != INFO_SIZE as isize {
                            // panic!("Must read info size bytes, readed: {}", x);
                            continue;
                        }
                    }
                };

                // libc::sleep(info.len as u32);

                let x = std::slice::from_raw_parts(info.data, info.len);
                let x = std::str::from_utf8(&x).expect("Wow cannot convert &[u8] to string");
                println!("Hello, {}!!!", x);

                libc::close(info.back_fd);
                // libc::write(info.back_fd, core::ptr::null(), 0);
            }
        }));

        let func = |name: &'static str| {
            move || {
                let mut pipefd_local = [0i32; 2];
                if libc::pipe(pipefd_local.as_mut_ptr()) != 0 {
                    panic!("Could not open a pipe in thread: {}", name);
                }
                let buf = name.as_bytes();
                let info = Info {
                    len: name.len(),
                    back_fd: pipefd_local[1],
                    data: buf.as_ptr(),
                };
                libc::write(
                    pipefd[1],
                    &info as *const Info as *const libc::c_void,
                    INFO_SIZE,
                );

                libc::read(
                    pipefd_local[0],
                    core::ptr::null_mut() as *mut libc::c_void,
                    0,
                );
            }
        };

        join_handlers.push(std::thread::spawn(func("Gregory")));
        join_handlers.push(std::thread::spawn(func("Max")));
        join_handlers.push(std::thread::spawn(func("Hitler")));

        while join_handlers.len() != 1 {
            let h = join_handlers.pop().expect("Must contain one");
            h.join().expect("Must be joined successfully");
        }

        libc::close(pipefd[1]);
        // libc::write(pipefd[1], core::ptr::null(), 0);
        join_handlers.pop().expect("Must contain one").join().expect("Must join successfully");
    }
}
