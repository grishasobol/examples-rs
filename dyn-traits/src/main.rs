use std::collections::VecDeque;

fn main() {
    println!("Hello, world!");
}

#[test]
fn test1() {
    trait A {
        fn a(self: Box<Self>) -> (Box<dyn A>, i32);
    }

    trait B {
        fn print(&self, name: &str, b: i32);
    }

    struct X {
        x: i32,
        b: Box<dyn B>,
    }

    struct Y {
        y: i32,
        b: Box<dyn B>,
    }

    impl A for X {
        fn a(mut self: Box<Self>) -> (Box<dyn A>, i32) {
            let x = self.x;
            self.b.print("X", x);
            self.x += 1;
            (self, x)
        }
    }

    impl A for Y {
        fn a(mut self: Box<Self>) -> (Box<dyn A>, i32) {
            let y = self.y;
            self.b.print("Y", y);
            self.y += 10;
            (self, y)
        }
    }

    struct P;

    impl B for P {
        fn print(&self, name: &str, b: i32) {
            println!("{}: {}", name, b);
        }
    }

    struct Main {
        a: Box<dyn A>,
    }

    let mut main = Main {
        a: Box::new(X {
            x: 0,
            b: Box::new(P),
        }),
    };

    let (a, x) = main.a.a();
    assert_eq!(x, 0);
    main.a = a;
    main.a.a();
}

#[test]
fn test2() {
    trait A {
        fn to_dyn(self: Box<Self>) -> Box<dyn A>;
        fn a(&mut self) -> &mut u32;

        fn inc(mut self: Box<Self>) -> Box<dyn A> {
            *self.a() += 1;
            self.to_dyn()
        }
    }

    struct A1 {
        a: u32,
    }

    impl A for A1 {
        fn to_dyn(self: Box<Self>) -> Box<dyn A> {
            self
        }

        fn a(&mut self) -> &mut u32 {
            &mut self.a
        }
    }

    let x: Box<dyn A> = Box::new(A1 { a: 0 });

    x.inc();
}

#[test]
fn test3() {
    trait A {
        fn a(&mut self) -> &mut u32;
    }

    impl A for Box<dyn A> {
        fn a(&mut self) -> &mut u32 {
            self.as_mut().a()
        }
    }

    trait Inc: A {
        fn inc(self) -> Box<dyn A>;
    }

    impl Inc for Box<dyn A> {
        fn inc(mut self) -> Box<dyn A> {
            *self.a() += 1;
            self
        }
    }

    struct A1 {
        a: u32,
    }

    impl A for A1 {
        fn a(&mut self) -> &mut u32 {
            &mut self.a
        }
    }

    let x: Box<dyn A> = Box::new(A1 { a: 0 });

    x.inc();
}

#[test]
fn test4() {
    trait A {
        fn to_dyn(self: Box<Self>) -> Box<dyn A>;
        fn a(&mut self) -> &mut u32;
        fn inc(mut self: Box<Self>) -> Box<dyn A> {
            *self.a() += 1;
            self.to_dyn()
        }
    }

    struct A1 {
        a: u32,
    }

    impl A for A1 {
        fn to_dyn(self: Box<Self>) -> Box<dyn A> {
            self
        }

        fn a(&mut self) -> &mut u32 {
            &mut self.a
        }

        fn inc(mut self: Box<Self>) -> Box<dyn A> {
            A::inc(self).inc()
        }
    }

    let mut x = VecDeque::new();
    x.push_back(1);
    x.push_back(2);
    x.push_back(3);

    for x in x.iter() {
        println!("{}", x);
    }

    x.retain(|x| {
        println!("{}", x);
        true
    });
}
