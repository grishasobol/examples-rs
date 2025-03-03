#![feature(prelude_import)]
#[prelude_import]
use std::prelude::rust_2021::*;
#[macro_use]
extern crate std;
use tokio::signal;
fn main() {
    let body = async {
        example1().await;
    };
    #[allow(clippy::expect_used, clippy::diverging_sub_expression)]
    {
        return tokio::runtime::Builder::new_multi_thread()
            .worker_threads(2usize)
            .enable_all()
            .build()
            .expect("Failed building the Runtime")
            .block_on(body);
    }
}
async fn example1() {
    use tokio::io::{self, AsyncBufReadExt, BufReader};
    use tokio::time::{self, Duration};
    let mut stdin = BufReader::new(io::stdin()).lines();
    async fn maybe_sleep(maybe_timer: &mut Option<time::Sleep>) {
        if let Some(timer) = maybe_timer.take() {
            timer.await
        } else {
            std::future::pending().await
        }
    }
    let mut delay: Option<_> = None;
    let mut delay2: Option<_> = None;
    let mut timer = Some(time::sleep(Duration::from_secs(1)));
    let mut counter = 0;
    let mut loop_counter = 0;
    loop {
        {
            ::std::io::_print(format_args!("Loop iteration {0}\n", loop_counter));
        };
        loop_counter += 1;
        {
            #[doc(hidden)]
            mod __tokio_select_util {
                pub(super) enum Out<_0, _1, _2, _3, _4> {
                    _0(_0),
                    _1(_1),
                    _2(_2),
                    _3(_3),
                    _4(_4),
                    Disabled,
                }
                pub(super) type Mask = u8;
            }
            use ::tokio::macros::support::Future;
            use ::tokio::macros::support::Pin;
            use ::tokio::macros::support::Poll::{Ready, Pending};
            const BRANCHES: u32 = 5;
            let mut disabled: __tokio_select_util::Mask = Default::default();
            if !true {
                let mask: __tokio_select_util::Mask = 1 << 0;
                disabled |= mask;
            }
            if !true {
                let mask: __tokio_select_util::Mask = 1 << 1;
                disabled |= mask;
            }
            if !true {
                let mask: __tokio_select_util::Mask = 1 << 2;
                disabled |= mask;
            }
            if !true {
                let mask: __tokio_select_util::Mask = 1 << 3;
                disabled |= mask;
            }
            if !true {
                let mask: __tokio_select_util::Mask = 1 << 4;
                disabled |= mask;
            }
            let mut output = {
                let mut futures = (
                    signal::ctrl_c(),
                    maybe_sleep(&mut timer),
                    stdin.next_line(),
                    maybe_sleep(&mut delay),
                    maybe_sleep(&mut delay2),
                );
                let mut futures = &mut futures;
                ::tokio::macros::support::poll_fn(|cx| {
                    let mut is_pending = false;
                    let start = { ::tokio::macros::support::thread_rng_n(BRANCHES) };
                    for i in 0..BRANCHES {
                        let branch;
                        #[allow(clippy::modulo_one)]
                        {
                            branch = (start + i) % BRANCHES;
                        }
                        match branch {
                            #[allow(unreachable_code)]
                            0 => {
                                let mask = 1 << branch;
                                if disabled & mask == mask {
                                    continue;
                                }
                                let (fut, ..) = &mut *futures;
                                let mut fut = unsafe { Pin::new_unchecked(fut) };
                                let out = match Future::poll(fut, cx) {
                                    Ready(out) => out,
                                    Pending => {
                                        is_pending = true;
                                        continue;
                                    }
                                };
                                disabled |= mask;
                                #[allow(unused_variables)]
                                #[allow(unused_mut)]
                                match &out {
                                    _ => {}
                                    _ => continue,
                                }
                                return Ready(__tokio_select_util::Out::_0(out));
                            }
                            #[allow(unreachable_code)]
                            1 => {
                                let mask = 1 << branch;
                                if disabled & mask == mask {
                                    continue;
                                }
                                let (_, fut, ..) = &mut *futures;
                                let mut fut = unsafe { Pin::new_unchecked(fut) };
                                let out = match Future::poll(fut, cx) {
                                    Ready(out) => out,
                                    Pending => {
                                        is_pending = true;
                                        continue;
                                    }
                                };
                                disabled |= mask;
                                #[allow(unused_variables)]
                                #[allow(unused_mut)]
                                match &out {
                                    _ => {}
                                    _ => continue,
                                }
                                return Ready(__tokio_select_util::Out::_1(out));
                            }
                            #[allow(unreachable_code)]
                            2 => {
                                let mask = 1 << branch;
                                if disabled & mask == mask {
                                    continue;
                                }
                                let (_, _, fut, ..) = &mut *futures;
                                let mut fut = unsafe { Pin::new_unchecked(fut) };
                                let out = match Future::poll(fut, cx) {
                                    Ready(out) => out,
                                    Pending => {
                                        is_pending = true;
                                        continue;
                                    }
                                };
                                disabled |= mask;
                                #[allow(unused_variables)]
                                #[allow(unused_mut)]
                                match &out {
                                    line => {}
                                    _ => continue,
                                }
                                return Ready(__tokio_select_util::Out::_2(out));
                            }
                            #[allow(unreachable_code)]
                            3 => {
                                let mask = 1 << branch;
                                if disabled & mask == mask {
                                    continue;
                                }
                                let (_, _, _, fut, ..) = &mut *futures;
                                let mut fut = unsafe { Pin::new_unchecked(fut) };
                                let out = match Future::poll(fut, cx) {
                                    Ready(out) => out,
                                    Pending => {
                                        is_pending = true;
                                        continue;
                                    }
                                };
                                disabled |= mask;
                                #[allow(unused_variables)]
                                #[allow(unused_mut)]
                                match &out {
                                    _ => {}
                                    _ => continue,
                                }
                                return Ready(__tokio_select_util::Out::_3(out));
                            }
                            #[allow(unreachable_code)]
                            4 => {
                                let mask = 1 << branch;
                                if disabled & mask == mask {
                                    continue;
                                }
                                let (_, _, _, _, fut, ..) = &mut *futures;
                                let mut fut = unsafe { Pin::new_unchecked(fut) };
                                let out = match Future::poll(fut, cx) {
                                    Ready(out) => out,
                                    Pending => {
                                        is_pending = true;
                                        continue;
                                    }
                                };
                                disabled |= mask;
                                #[allow(unused_variables)]
                                #[allow(unused_mut)]
                                match &out {
                                    _ => {}
                                    _ => continue,
                                }
                                return Ready(__tokio_select_util::Out::_4(out));
                            }
                            _ => {
                                ::core::panicking::panic_fmt(format_args!(
                                    "internal error: entered unreachable code: {0}",
                                    format_args!(
                                        "reaching this means there probably is an off by one bug"
                                    )
                                ));
                            }
                        }
                    }
                    if is_pending {
                        Pending
                    } else {
                        Ready(__tokio_select_util::Out::Disabled)
                    }
                })
                .await
            };
            match output {
                __tokio_select_util::Out::_0(_) => {
                    {
                        ::std::io::_print(format_args!("Ctrl-C received, exiting\n"));
                    };
                    break;
                }
                __tokio_select_util::Out::_1(_) => {
                    {
                        ::std::io::_print(format_args!("Timer 1s elapsed ...\n"));
                    };
                    timer.replace(time::sleep(Duration::from_secs(1)));
                }
                __tokio_select_util::Out::_2(line) => {
                    let line = line.expect("Failed to read line");
                    if let Some(_) = line {
                        delay = Some(time::sleep(Duration::from_secs(3)));
                        counter += 1;
                    } else {
                        break;
                    }
                }
                __tokio_select_util::Out::_3(_) => {
                    {
                        ::std::io::_print(format_args!("Hello timer, counter: {0}\n", counter));
                    };
                    delay2 = Some(time::sleep(Duration::from_secs(3)));
                    counter = 0;
                }
                __tokio_select_util::Out::_4(_) => {
                    {
                        ::std::io::_print(format_args!("Hello timer2\n"));
                    };
                }
                __tokio_select_util::Out::Disabled => {
                    ::core::panicking::panic_fmt(format_args!(
                        "all branches are disabled and there is no else branch"
                    ));
                }
                _ => {
                    ::core::panicking::panic_fmt(format_args!(
                        "internal error: entered unreachable code: {0}",
                        format_args!("failed to match bind")
                    ));
                }
            }
        }
        {
            ::std::io::_print(format_args!("After select block ...\n"));
        };
    }
}
