use std::sync::RwLock;
// use environmental::environmental;

#[derive(Default)]
pub struct Lol<T: ?Sized> {
    inner: Option<RwLock<*mut T>>,
}

impl<T: ?Sized> Lol<T> {
    pub const fn new() -> Self {
        Lol { inner: None }
    }

    pub fn set(&mut self, data: &mut T) {
        let x = RwLock::new(data as *mut T);
        self.inner.replace(x);
    }

    pub fn unset(&mut self) {
        let _ = self.inner.take();
    }

    pub fn using<R>(this: &mut Self, var: &mut T, f: impl FnOnce() -> R) -> R {
        let x = RwLock::new(var as *mut T);
        this.inner.replace(x);

        struct StackGuard<'a, T: ?Sized> {
            global_stack: &'a mut Lol<T>,
        }
        impl<'a, T: ?Sized> Drop for StackGuard<'a, T> {
            fn drop(&mut self) {
                self.global_stack.unset();
            }
        }
        let _guard = StackGuard { global_stack: this };

        f()
    }

    pub fn with<R>(&self, f: impl FnOnce(&T) -> R) -> R {
        let x = self.inner.as_ref().unwrap().read().unwrap();
        unsafe {
            let x = *x;
            f(x.as_ref().expect("Pointer to the inner must not be NULL"))
        }
    }

    pub fn with_mut<R>(&self, f: impl FnOnce(&mut T) -> R) -> R {
        let x = self.inner.as_ref().unwrap().write().unwrap();
        unsafe {
            let x = *x;
            f(x.as_mut().expect("Pointer to the inner must not be NULL"))
        }
    }
}

#[macro_export]
macro_rules! menv {
    ($name:ident : $t:ty) => {
        mod $name {
            #[allow(unused_imports)]
            use super::*;

            static mut GLOBAL: $crate::Lol<$t> = $crate::Lol::new();

            pub fn using<R, F: FnOnce() -> R>(protected: &mut $t, f: F) -> R {
                unsafe { $crate::Lol::using(&mut GLOBAL, protected, f) }
            }

            pub fn with<R, F: FnOnce(&$t) -> R>(f: F) -> R {
                unsafe { GLOBAL.with(|x| f(x)) }
            }

            pub fn with_mut<R, F: FnOnce(&mut $t) -> R>(f: F) -> R {
                unsafe { GLOBAL.with_mut(|x| f(x)) }
            }
        }
    };
	($name:ident : trait @$t:ident [$($args:ty,)*]) => {
		mod $name {
		    #[allow(unused_imports)]
            use super::*;

			static mut GLOBAL: $crate::Lol<dyn $t<$($args),*>> = $crate::Lol::new();

			pub fn using<R, F: FnOnce() -> R>(
				protected: &mut dyn $t<$($args),*>,
				f: F
			) -> R {
				let lifetime_extended = unsafe {
					core::mem::transmute::<&mut dyn $t<$($args),*>, &mut (dyn $t<$($args),*> + 'static)>(protected)
				};
                unsafe { $crate::Lol::using(&mut GLOBAL, lifetime_extended, f) }
			}

			pub fn with<R, F: FnOnce(&dyn $t<$($args),*>) -> R>(
				f: F
			) -> R {
                unsafe { GLOBAL.with(|x| f(x)) }
			}

			pub fn with_mut<R, F: FnOnce(&mut dyn $t<$($args),*>) -> R>(
				f: F
			) -> R {
                unsafe { GLOBAL.with_mut(|x| f(x)) }
			}
		}
	};
	($name:ident : trait $t:ident <>) => { $crate::menv! { $name : trait @$t [] } };
	($name:ident : trait $t:ident < $($args:ty),* $(,)* >) => {
		$crate::menv! { $name : trait @$t [$($args,)*] }
	};
	($name:ident : trait $t:ident) => { $crate::menv! { $name : trait @$t [] } };
}

pub trait LolKek {
    fn add(&mut self);
    fn read(&self) -> u32;
}

#[test]
pub fn test_dyn_trait() {
    use std::thread;
    struct A {
        pub a: u32,
    }

    impl LolKek for A {
        fn add(&mut self) {
            self.a += 1;
        }
        fn read(&self) -> u32 {
            self.a
        }
    }

    menv!(kekus: trait LolKek);

    let mut z = A { a: 10 };

    kekus::using(&mut z, || {
        let j1 = thread::Builder::new()
            .name("writer".to_string())
            .spawn(|| {
                for _ in 0..1000 {
                    kekus::with_mut(|value| value.add());
                }
            })
            .unwrap();
        let j2 = thread::Builder::new()
            .name("reader".to_string())
            .spawn(|| {
                for i in 0..100 {
                    kekus::with(|value| println!("{}) counter = {}", i, value.read()));
                }
            })
            .unwrap();
        println!("Join thread writer");
        j1.join().unwrap();
        println!("Join thread reader");
        j2.join().unwrap();
        println!("All done");
        kekus::with(|val| {
            println!("val = {}", val.read());
        })
    });
}

#[test]
fn test1() {
    use std::thread;

    menv!(kekus: i32);

    let mut z = 42;
    kekus::using(&mut z, || {
        let j1 = thread::Builder::new()
            .name("writer".to_string())
            .spawn(|| {
                for _ in 0..1000 {
                    kekus::with_mut(|value| *value += 1);
                }
            })
            .unwrap();
        let j2 = thread::Builder::new()
            .name("reader".to_string())
            .spawn(|| {
                for i in 0..100 {
                    kekus::with(|value| println!("{}) counter = {}", i, value));
                }
            })
            .unwrap();
        println!("Join thread writer");
        j1.join().unwrap();
        println!("Join thread reader");
        j2.join().unwrap();
        println!("All done");
        kekus::with(|val| {
            println!("val = {}", val);
        })
    });
}

#[cfg(test)]
mod test {
    use crate::Lol;
    use std::thread;

    static mut GLOBAL: Lol<i32> = Lol::new();

    #[test]
    fn simple() {
        let mut z = 42;
        unsafe {
            GLOBAL.set(&mut z);
            let j1 = thread::Builder::new()
                .name("writer".to_string())
                .spawn(|| {
                    for _ in 0..1000 {
                        GLOBAL.with_mut(|value| *value += 1);
                    }
                })
                .unwrap();
            let j2 = thread::Builder::new()
                .name("reader".to_string())
                .spawn(|| {
                    for i in 0..100 {
                        GLOBAL.with(|value| println!("{}) counter = {}", i, value));
                    }
                })
                .unwrap();
            println!("Join thread writer");
            j1.join().unwrap();
            println!("Join thread reader");
            j2.join().unwrap();
            println!("All done");
            GLOBAL.with(|val| {
                println!("val = {}", val);
            })
        }
    }

    #[test]
    fn test_using() {
        let mut z = 42;
        unsafe {
            Lol::using(&mut GLOBAL, &mut z, || {
                let j1 = thread::Builder::new()
                    .name("writer".to_string())
                    .spawn(|| {
                        for _ in 0..1000 {
                            GLOBAL.with_mut(|value| *value += 1);
                        }
                    })
                    .unwrap();
                let j2 = thread::Builder::new()
                    .name("reader".to_string())
                    .spawn(|| {
                        for i in 0..100 {
                            GLOBAL.with(|value| println!("{}) counter = {}", i, value));
                        }
                    })
                    .unwrap();
                println!("Join thread writer");
                j1.join().unwrap();
                println!("Join thread reader");
                j2.join().unwrap();
                println!("All done");
                GLOBAL.with(|val| {
                    println!("val = {}", val);
                })
            });
        }
    }
}
