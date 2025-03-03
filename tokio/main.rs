use tokio::signal;

#[tokio::main(worker_threads = 2)]
async fn main() {
    example1().await;
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
        println!("Loop iteration {loop_counter}");
        loop_counter += 1;

        tokio::select! {
            _ = signal::ctrl_c() => {
                println!("Ctrl-C received, exiting");
                break;
            }
            _ = maybe_sleep(&mut timer) => {
                println!("Timer 1s elapsed ...");
                timer.replace(time::sleep(Duration::from_secs(1)));
            }
            line = stdin.next_line() => {
                let line = line.expect("Failed to read line");
                if let Some(_) = line {
                    delay = Some(time::sleep(Duration::from_secs(3)));
                    counter += 1;
                } else {
                    // EOF or an error occurred, breaking the loop
                    break;
                }
            }
            _ = maybe_sleep(&mut delay) => {
                println!("Hello timer, counter: {counter}");
                delay2 = Some(time::sleep(Duration::from_secs(3)));
                counter = 0;
            },
            _ = maybe_sleep(&mut delay2) => {
                println!("Hello timer2");
            }
        }

        println!("After select block ...");
    }
}