use std::sync::RwLock;

#[derive(Default)]
pub struct Lol<T> {
    inner: Option<RwLock<*mut T>>,
}

impl<T> Lol<T> {
    pub const fn new() -> Self {
        Lol { inner: None }
    }

    pub unsafe fn set(&mut self, data: &mut T) {
        let x = RwLock::new(data as *mut T);
        self.inner.replace(x);
    }

    pub unsafe fn unset(&mut self) {
        let _ = self.inner.take();
    }

    pub fn using<R>(mut this: Self, var: &mut T, f: impl FnOnce() -> R) -> R {
        let x = RwLock::new(var as *mut T);
        this.inner.replace(x);

        struct StackGuard<'a, T> {
            global_stack: &'a mut Lol<T>,
        }
        impl<'a, T> Drop for StackGuard<'a, T> {
            fn drop(&mut self) {
                let _ = self.global_stack.inner.take();
            }
        }
        let _guard = StackGuard { global_stack: &mut this };

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

pub fn using<T, R>(global: &mut Lol<T>, var: &mut T, f: impl FnOnce() -> R) -> R {
	unsafe {
		global.set(var);

		struct PopGlobal<'a, T> {
			global_stack: &'a mut Lol<T>,
		}

		impl<'a, T> Drop for PopGlobal<'a, T> {
			fn drop(&mut self) {
                unsafe {
				    self.global_stack.unset();
                }
			}
		}

		let _guard = PopGlobal { global_stack: global };

        f()
	}
}

pub fn with<T, R>(global: &mut Lol<T>, f: impl FnOnce(&T) -> R) -> R {
    global.with(f)
}

pub fn with_mut<T, R>(global: &mut Lol<T>, f: impl FnOnce(&T) -> R) -> R {
    global.with(f)
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
}
