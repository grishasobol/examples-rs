use std::ops::Index;

#[test]
fn return_iterator() {
    struct A {
        pub a: Vec<u32>,
        pub b: u32
    }

    impl A {
        pub fn iter_a<'a>(&'a self) -> impl Iterator<Item = u32> + 'a {
            self.a.iter().map(move |a| *a + self.b)
        }
        pub fn iter_a_mut<'a>(&'a mut self) -> impl Iterator<Item = &'a mut u32> + 'a {
            self.a.iter_mut()
        }
    }

    let mut a = A {a: vec![1, 10, 8, 6], b: 1 };

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

    let a = A {a: vec![1,2,3,4]};
    (0..4).for_each(|i| {
        println!("{}", a[i]);
    });
}