use std::{
    collections::BTreeSet,
    env,
    ops::Index,
    os::fd::FromRawFd,
    process::{Command, Stdio}, fs::File, io::{BufReader, BufRead}, thread::sleep, time::Duration, sync::Arc, convert::{TryFrom, TryInto},
};

mod proc_macro;

#[test]
fn return_iterator() {
    struct A {
        pub a: Vec<u32>,
        pub b: u32,
    }

    impl A {
        pub fn iter_a<'a>(&'a self) -> impl Iterator<Item = u32> + 'a {
            self.a.iter().map(move |a| *a + self.b)
        }
        pub fn iter_a_mut<'a>(&'a mut self) -> impl Iterator<Item = &'a mut u32> + 'a {
            self.a.iter_mut()
        }
    }

    let mut a = A {
        a: vec![1, 10, 8, 6],
        b: 1,
    };

    for i in a.iter_a() {
        println!("LOL {}", i);
    }

    for i in a.iter_a_mut() {
        *i = 10;
    }

    for i in a.iter_a() {
        println!("LOL {}", i);
    }
}

#[test]
fn dyn_pointer() {
    trait Lol {
        fn lol(&mut self);
    }

    struct A(u32);
    struct B(u64);

    impl Lol for A {
        fn lol(&mut self) {
            println!("Lol I'm A({})", self.0)
        }
    }

    impl Lol for B {
        fn lol(&mut self) {
            self.0 += 1;
            println!("Lol I'm B({})", self.0);
        }
    }

    let mut a1 = A(1);
    let mut a2 = A(2);
    let mut b1 = B(10);
    let mut b2 = B(11);

    let mut lols: Vec<&mut dyn Lol> = Default::default();
    lols.push(&mut a1);
    lols.push(&mut a2);
    lols.push(&mut b1);
    lols.push(&mut b2);

    for lol in lols {
        lol.lol();
    }

    let mut lols: Vec<*mut dyn Lol> = Default::default();
    lols.push(&mut a1);
    lols.push(&mut a2);
    lols.push(&mut b1);
    lols.push(&mut b2);

    for lol in lols {
        a1.lol(); // can use it, because use raw pointers in vector
        unsafe { lol.as_mut().unwrap().lol() }
    }
}

#[test]
fn index_trait_impl() {
    // impl operator[]
    struct A {
        a: Vec<u32>,
    }

    impl Index<usize> for A {
        type Output = u32;
        fn index(&self, index: usize) -> &Self::Output {
            &self.a[index]
        }
    }

    let a = A {
        a: vec![1, 2, 3, 4],
    };
    (0..4).for_each(|i| {
        println!("{}", a[i]);
    });
}

// #[test]
// fn flat_map_ex() {
//     #[derive(Clone)]
//     struct A(i32);

//     let x: Vec<A> = (0..1000).flat_map(|i| [A(i), A(i * 10)].into_iter().cloned())
//     .collect();
// }

#[test]
fn dyn_pointer2() {
    trait Lol {
        fn lol(&mut self);
    }

    #[derive(Debug)]
    struct A(u32);
    #[derive(Debug)]
    struct B(u64);

    impl Lol for A {
        fn lol(&mut self) {
            println!("Lol I'm A({})", self.0)
        }
    }

    impl Lol for B {
        fn lol(&mut self) {
            self.0 += 1;
            println!("Lol I'm B({})", self.0);
        }
    }

    let mut a1 = A(1);
    let mut a2 = A(2);
    let mut b1 = B(10);
    let mut b2 = B(11);

    let mut lols: Vec<&mut dyn Lol> = Default::default();
    lols.push(&mut a1);
    lols.push(&mut a2);
    lols.push(&mut b1);
    lols.push(&mut b2);

    for lol in lols {
        lol.lol();
    }

    unsafe {
        const N: usize = core::mem::size_of::<*mut dyn Lol>();
        println!("*mut a1 = {:?}", &mut a1 as *mut A);
        println!(
            "*mut dyn a1 = {:?}",
            &mut a1 as &mut dyn Lol as *mut dyn Lol
        );
        let x: [u8; N] = core::mem::transmute(&mut a1 as *mut dyn Lol);
        println!("x = {:02x?}", x);
        let a1_: *mut dyn Lol = core::mem::transmute(x);
        let a1_ = a1_.as_mut().unwrap();
        a1_.lol();
    }
}

#[test]
fn test_command() {
    let args = vec!["--tmp", "--dev"];

    // let file = File::create("out.err").unwrap();
    // let stderr = Stdio::from(file);

    let file = File::create("out.out").unwrap();
    let stdout = Stdio::from(file);

    let mut ps = Command::new("/Users/gsobol/src/gear/target/release/gear")
        .args(args)
        .stderr(Stdio::piped())
        .stdout(stdout)
        .spawn()
        .unwrap();

    let stderr = ps.stderr.take().unwrap();
    let reader = BufReader::new(stderr);

    let lines = reader.lines();
    // lines.
    // println!("{}", String::from_utf8(s.to_vec()).unwrap());

    // sleep(Duration::from_secs(1));
    // let res = reader.into_inner();


    ps.wait();

    // let out = ps.stdout.take().unwrap();
}


#[test]
fn macro_test() {
    let mut  s = String::new();
    s = s + "das";
    // stringify!()
    // format!()
    macro_rules! syscall_args_trace {
        ($val:expr) => {
            {
                format!(", {} = {}", stringify!($val), $val)
            }
        };
        ($val:expr, $($rest:expr),+) => {
            {
                let mut s = syscall_args_trace!($val);
                s.push_str(&syscall_args_trace!($($rest),+));
                s
            }
        };
    }
    macro_rules! syscall_trace {
        ($name:expr, $($args:expr),+) => {
            {
                println!("gr_{}{}", $name, syscall_args_trace!($($args),+));
            }
        }
    }

    syscall_trace!("send", s, s);
}


const TR: usize = 10;

pub fn split_compute<T, R, F>(data: Vec<T>, task: F) -> Vec<R>
where
    T: Clone + Send + 'static,
    R: Send + 'static,
    F: FnOnce(T) -> R + Copy + Send + 'static,
{
    data.chunks(data.len() / TR)
        .map(|chunk| chunk.to_vec())
        .map(|chunk| std::thread::spawn(move || chunk.into_iter().map(|t| task(t)).collect::<Vec<_>>()))
        .map(|t| t.join().expect("Error in thread occurs"))
        .flat_map(|v| v.into_iter())
        .collect::<Vec<_>>()
}

#[test]
fn two_traits() {
    trait Bound<T: Bounded<B = Self>> : From<Self> + Copy {
        const UPPER: Self;
        fn unbound(&self) -> Option<T>;
    }

    trait Bounded: Sized {
        type B = Bounded<Self>;
    }

    #[derive(Clone, Copy)]
    struct Lol(u32);

    impl<T: Bounded<Self>> Bound<T> for Lol {
        const UPPER: Self = Lol(123);
        fn unbound(&self) -> Option<T> {
            if self.0 > Lol::UPPER.0 {
                None
            } else {
                unsafe { Some(T::from_bound(self)) }
            }
        }
    }

    struct Kek(u32);

    impl From<Kek> for Lol {
        fn from(value: Kek) -> Self {
            Lol(value.0)
        }
    }

    impl Bounded<Lol> for Kek {
        unsafe fn from_bound(bound: &) -> Self {
            Kek(bound.0)
        }
    }
}

