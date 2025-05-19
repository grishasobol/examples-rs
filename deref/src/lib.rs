#[test]
fn test1() {
    use std::ops::Deref;

    #[derive(Debug, PartialEq, Eq)]
    struct A(i32);

    #[derive(Debug, PartialEq, Eq)]
    struct B(A);

    impl Deref for A {
        type Target = i32;

        fn deref(&self) -> &Self::Target {
            &self.0
        }
    }

    impl Deref for B {
        type Target = A;

        fn deref(&self) -> &Self::Target {
            &self.0
        }
    }

    // Impossible to implement two derefs for the same type
    // ```
    // impl Deref for B {
    //     type Target = i32;

    //     fn deref(&self) -> &Self::Target {
    //         &self.0 .0
    //     }
    // }
    // ```

    let x = B(A(42));

    // mismatched types expected `B`, found `A`
    // ```
    // assert_eq!(x, A(42));
    // ```

    // can't compare `B` with `A`
    // the trait `PartialEq<A>` is not implemented for `B`
    // required for `&B` to implement `PartialEq<&A>`
    // ```
    // assert_eq!(&x, &A(42));
    // ```

    assert_eq!(&x, &B(A(42)));
    assert_eq!(x.deref(), &A(42));
    assert_eq!(*x, A(42));
    assert_eq!(x.deref().deref(), &42);
    assert_eq!(*x.deref(), A(42));
    assert_eq!(**x, 42);

    // deref coercion
    // `&B` can be coerced to `&A` because of the deref trait
    let y: &A = &x;
    assert_eq!(y, &A(42));

    let y: &i32 = &&x;
    assert_eq!(y, &42);

    fn foo(x: &i32) {
        println!("foo: {:?}", x);
    }

    fn foo1(x: &A) {
        println!("foo1: {:?}", x);
    }

    fn foo2(x: &B) {
        println!("foo2: {:?}", x);
    }

    // you can chain Deref coercion multiple levels deep
    foo(&x);
    foo(&&x);
    foo(&&&x);

    foo1(&x);
    foo1(&&x);
    foo1(&&&x);

    foo2(&x);
    foo2(&&x);
    foo2(&&&x);
}

#[test]
fn test_methods_coercion() {
    use std::ops::Deref;

    #[derive(Debug, PartialEq, Eq)]
    struct A;

    #[derive(Debug, PartialEq, Eq)]
    struct B(A);

    #[derive(Debug, PartialEq, Eq)]
    struct C(B);

    impl A {
        fn foo(&self) -> i32 {
            42
        }

        fn special_a(&self) -> i32 {
            43
        }
    }

    impl B {
        fn bar(&self) -> i32 {
            100
        }

        fn foo(&self) -> i32 {
            101
        }

        fn special_b(&self) -> i32 {
            102
        }
    }

    impl C {
        fn bar(&self) -> i32 {
            200
        }

        fn foo(&self) -> i32 {
            201
        }
    }

    impl Deref for B {
        type Target = A;

        fn deref(&self) -> &Self::Target {
            &self.0
        }
    }

    impl Deref for C {
        type Target = B;

        fn deref(&self) -> &Self::Target {
            &self.0
        }
    }

    fn check_b(b: &B) {
        assert_eq!(b.foo(), 101);
        assert_eq!(b.bar(), 100);
        assert_eq!(b.special_a(), 43);
        assert_eq!(b.special_b(), 102);
    }

    fn check_c(c: &C) {
        assert_eq!(c.foo(), 201);
        assert_eq!(c.bar(), 200);
        assert_eq!(c.special_a(), 43);
        assert_eq!(c.special_b(), 102);
    }

    fn check_a(a: &A) {
        assert_eq!(a.foo(), 42);
        assert_eq!(a.special_a(), 43);
    }

    let c = C(B(A));

    check_a(&c);
    check_b(&c);
    check_c(&c);

    assert_eq!(c.foo(), 201);
    assert_eq!(c.deref().foo(), 101);
    assert_eq!(c.deref().deref().foo(), 42);
    assert_eq!((*c).foo(), 101);
    assert_eq!((**c).foo(), 42);
}
