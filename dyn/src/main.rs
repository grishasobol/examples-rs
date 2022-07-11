
trait T {
    fn kek(&self);
    fn lol(&self);
}

struct A;
struct B;

impl T for A {
    fn kek(&self) {
        println!("{:?} A kek", self as *const A);
    }
    fn lol(&self) {
        println!("{:?} A lol", self as *const A);
    }
}

impl T for B {
    fn kek(&self) {
        println!("B kek");
    }
    fn lol(&self) {
        println!("B lol");
    }
}

struct Z;
impl T for Z {
    fn kek(&self) {
        todo!()
    }

    fn lol(&self) {
        todo!()
    }
}

struct C(Box<dyn T>);

impl C {
    fn new(t: Box<dyn T>) -> C {
        let x = t as *mut dyn T as *mut u8 as usize;
        C(x)
    }
    fn do_lol(&self) {
        unsafe {
            (self.0 as *mut B as *mut dyn T).as_ref().unwrap().lol();
        }
    }
    fn do_kek(&self) {
        unsafe {
            (self.0 as *mut A as *mut dyn T).as_ref().unwrap().kek();
        }
    }
}

fn main() {
    let mut a = A;
    let mut b = B;
    let ca = C::new(Box::new(a));
    let cb = C::new(&mut b);

    ca.do_lol();
    ca.do_kek();
    cb.do_lol();
    cb.do_kek();
}
