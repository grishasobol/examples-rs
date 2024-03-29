// Copyright 2017-2020 Parity Technologies
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//! Safe global references to stack variables.
//!
//! Set up a global reference with environmental! macro giving it a name and type.
//! Use the `using` function scoped under its name to name a reference and call a function that
//! takes no parameters yet can access said reference through the similarly placed `with` function.
//!
//! # Examples
//!
//! ```
//! #[macro_use] extern crate environmental;
//! // create a place for the global reference to exist.
//! environmental!(counter: u32);
//! fn stuff() {
//!   // do some stuff, accessing the named reference as desired.
//!   counter::with(|i| *i += 1);
//! }
//! fn main() {
//!   // declare a stack variable of the same type as our global declaration.
//!   let mut counter_value = 41u32;
//!   // call stuff, setting up our `counter` environment as a reference to our counter_value var.
//!   counter::using(&mut counter_value, stuff);
//!   println!("The answer is {:?}", counter_value); // will print 42!
//!   stuff();	// safe! doesn't do anything.
//! }
//! ```

#![cfg_attr(not(feature = "std"), no_std)]

extern crate alloc;

use core::cell::{Ref, RefMut};
#[doc(hidden)]
pub use core::{cell::RefCell, mem::{transmute, replace}, marker::PhantomData};
use std::sync::{Mutex, RwLock, RwLockReadGuard, RwLockWriteGuard};

#[doc(hidden)]
pub use alloc::{rc::Rc, vec::Vec, sync::Arc};

mod local_key;

pub use local_key::LocalKey;

pub use std::thread;
pub use std::sync::MutexGuard;


#[derive(Default)]
pub struct Lol<T> {
	inner: RwLock<T>,
}

impl<T> Lol<T> {
	pub fn new(data: T) -> Self {
		Lol { inner: RwLock::new(data) }
	}
	pub fn borrow(&self) -> RwLockReadGuard<'_, T> {
		self.inner.read().unwrap()
	}
	pub fn borrow_mut(&self) -> RwLockWriteGuard<'_, T> {
		self.inner.write().unwrap()
	}
}

#[macro_export]
macro_rules! thread_local_impl {
	($(#[$attr:meta])* static $name:ident: $t:ty = $init:expr) => (
		$(#[$attr])*
		static $name: $crate::LocalKey<$t> = {
			fn __init() -> $t { $init }

			$crate::local_key_init!(__init)
		};
	);
}

/// The global inner that stores the stack of globals.
#[doc(hidden)]
pub type GlobalInner<T> = Lol<Vec<Rc<Lol<*mut T>>>>;

/// The global type.
type Global<T> = LocalKey<GlobalInner<T>>;

#[doc(hidden)]
pub fn using<T: ?Sized, R, F: FnOnce() -> R>(
	global: &'static Global<T>,
	protected: &mut T,
	f: F,
) -> R {
	// store the `protected` reference as a pointer so we can provide it to logic running within
	// `f`.
	// while we record this pointer (while it's non-zero) we guarantee:
	// - it will only be used once at any time (no reentrancy);
	// - that no other thread will use it; and
	// - that we do not use the original mutating reference while the pointer.
	// exists.
	global.with(|r| {
		// Push the new global to the end of the stack.
		println!("Borrow mut start");
		r.borrow_mut().push(
			Rc::new(Lol::new(protected as _)),
		);
		println!("Borrow mut end");

		// Even if `f` panics the added global will be popped.
		struct PopGlobal<'a, T: 'a + ?Sized> {
			global_stack: &'a GlobalInner<T>,
		}

		impl<'a, T: 'a + ?Sized> Drop for PopGlobal<'a, T> {
			fn drop(&mut self) {
				println!("Borrow mut in drop start");
				self.global_stack.borrow_mut().pop();
				println!("Borrow mut in drop end");
			}
		}

		let _guard = PopGlobal { global_stack: r };

		f()
	})
}

#[doc(hidden)]
pub fn with<T: ?Sized, R, F: FnOnce(&mut T) -> R>(
	global: &'static Global<T>,
	mutator: F,
) -> Option<R> {
	global.with(|r| {
		// We always use the `last` element when we want to access the
		// currently set global.
		let last = r.borrow().last().cloned();
		match last {
			Some(mut ptr) => unsafe {
				// safe because it's only non-zero when it's being called from using, which
				// is holding on to the underlying reference (and not using it itself) safely.
				let x = Rc::as_ref(&mut ptr);
				let x = x.borrow_mut();
				let x = *x;
				let x = &mut *x;
				Some(mutator(x))
			}
			None => None,
		}
	})
}

/// Declare a new global reference module whose underlying value does not contain references.
///
/// Will create a module of a given name that contains two functions:
///
/// * `pub fn using<R, F: FnOnce() -> R>(protected: &mut $t, f: F) -> R`
///   This executes `f`, returning its value. During the call, the module's reference is set to
///   be equal to `protected`.
/// * `pub fn with<R, F: FnOnce(&mut $t) -> R>(f: F) -> Option<R>`
///   This executes `f`, returning `Some` of its value if called from code that is being executed
///   as part of a `using` call. If not, it returns `None`. `f` is provided with one argument: the
///   same reference as provided to the most recent `using` call.
///
/// # Examples
///
/// Initializing the global context with a given value.
///
/// ```rust
/// #[macro_use] extern crate environmental;
/// environmental!(counter: u32);
/// fn main() {
///   let mut counter_value = 41u32;
///   counter::using(&mut counter_value, || {
///     let odd = counter::with(|value|
///       if *value % 2 == 1 {
///         *value += 1; true
///       } else {
///         *value -= 3; false
///       }).unwrap();	// safe because we're inside a counter::using
///     println!("counter was {}", match odd { true => "odd", _ => "even" });
///   });
///
///   println!("The answer is {:?}", counter_value); // 42
/// }
/// ```
///
/// Roughly the same, but with a trait object:
///
/// ```rust
/// #[macro_use] extern crate environmental;
///
/// trait Increment { fn increment(&mut self); }
///
/// impl Increment for i32 {
///	fn increment(&mut self) { *self += 1 }
/// }
///
/// environmental!(val: Increment + 'static);
///
/// fn main() {
///	let mut local = 0i32;
///	val::using(&mut local, || {
///		val::with(|v| for _ in 0..5 { v.increment() });
///	});
///
///	assert_eq!(local, 5);
/// }
/// ```
#[macro_export]
macro_rules! environmental {
	($name:ident : $t:ty) => {
		#[allow(non_camel_case_types)]
		struct $name { __private_field: () }

		$crate::thread_local_impl! {
			static GLOBAL: $crate::GlobalInner<$t> = Default::default()
		}

		impl $name {
			#[allow(unused_imports)]

			pub fn using<R, F: FnOnce() -> R>(
				protected: &mut $t,
				f: F
			) -> R {
				$crate::using(&GLOBAL, protected, f)
			}

			pub fn with<R, F: FnOnce(&mut $t) -> R>(
				f: F
			) -> Option<R> {
				$crate::with(&GLOBAL, |x| f(x))
			}
		}
	};
	($name:ident : trait @$t:ident [$($args:ty,)*]) => {
		#[allow(non_camel_case_types, dead_code)]
		struct $name { __private_field: () }

		$crate::thread_local_impl! {
			static GLOBAL: $crate::GlobalInner<(dyn $t<$($args),*> + 'static)>
				= Default::default()
		}

		impl $name {
		#[allow(unused_imports)]

			pub fn using<R, F: FnOnce() -> R>(
				protected: &mut dyn $t<$($args),*>,
				f: F
			) -> R {
				let lifetime_extended = unsafe {
					$crate::transmute::<&mut dyn $t<$($args),*>, &mut (dyn $t<$($args),*> + 'static)>(protected)
				};
				$crate::using(&GLOBAL, lifetime_extended, f)
			}

			pub fn with<R, F: for<'a> FnOnce(&'a mut (dyn $t<$($args),*> + 'a)) -> R>(
				f: F
			) -> Option<R> {
				$crate::with(&GLOBAL, |x| f(x))
			}
		}
	};
	($name:ident<$traittype:ident> : trait $t:ident <$concretetype:ty>) => {
		#[allow(non_camel_case_types, dead_code)]
		struct $name <H: $traittype> { _private_field: $crate::PhantomData<H> }

		$crate::thread_local_impl! {
			static GLOBAL: $crate::GlobalInner<(dyn $t<$concretetype> + 'static)>
				= Default::default()
		}

		impl<H: $traittype> $name<H> {
			#[allow(unused_imports)]
			pub fn using<R, F: FnOnce() -> R>(
				protected: &mut dyn $t<H>,
				f: F
			) -> R {
				let lifetime_extended = unsafe {
					$crate::transmute::<&mut dyn $t<H>, &mut (dyn $t<$concretetype> + 'static)>(protected)
				};
				$crate::using(&GLOBAL, lifetime_extended, f)
			}

			pub fn with<R, F: for<'a> FnOnce(&'a mut (dyn $t<$concretetype> + 'a)) -> R>(
				f: F
			) -> Option<R> {
				$crate::with(&GLOBAL, |x| f(x))
			}
		}
	};
	($name:ident : trait $t:ident <>) => { $crate::environmental! { $name : trait @$t [] } };
	($name:ident : trait $t:ident < $($args:ty),* $(,)* >) => {
		$crate::environmental! { $name : trait @$t [$($args,)*] }
	};
	($name:ident : trait $t:ident) => { $crate::environmental! { $name : trait @$t [] } };
}

#[cfg(test)]
mod tests {
	use alloc::vec::*;
	// Test trait in item position
	#[allow(dead_code)]
	mod trait_test {
		trait Test {}

		environmental!(item_positon_trait: trait Test);
	}

	// Test type in item position
	#[allow(dead_code)]
	mod type_test {
		environmental!(item_position_type: u32);
	}

	#[test]
	fn simple_works() {
		environmental!(counter: u32);

		fn stuff() { counter::with(|value| *value += 1); }

		// declare a stack variable of the same type as our global declaration.
		let mut local = 41u32;

		// call stuff, setting up our `counter` environment as a reference to our local counter var.
		counter::using(&mut local, stuff);
		assert_eq!(local, 42);
		stuff();	// safe! doesn't do anything.
		assert_eq!(local, 42);
	}

	#[test]
	fn simple_thread() {
		use std::thread;
		use crate::*;

		environmental!(counter: u32);

		fn stuff() {
			// let x = RwLock::new(0);
			// let r1 = x.read().unwrap();
			// let a = *r1;

			// let mut x = Lol::new(10);

			// fn func(x: &mut i32) {
			// 	*x += 10;
			// }

			// let mut y = x.borrow_mut();
			// func(&mut *y);

			let j1 = thread::Builder::new().name("writer".to_string()).spawn(|| {
				for _ in 0..1000 {
					counter::with(|value| *value += 1);
				}
			}).unwrap();
			let j2 = thread::Builder::new().name("reader".to_string()).spawn(|| {
				for i in 0..100 {
					counter::with(|value| println!("{}) counter = {}", i, value));
				}
			}).unwrap();
			println!("Join thread writer");
			j1.join().unwrap();
			println!("Join thread reader");
			j2.join().unwrap();
			println!("All done");
		}

		// declare a stack variable of the same type as our global declaration.
		let mut local = 41u32;

		// call stuff, setting up our `counter` environment as a reference to our local counter var.
		counter::using(&mut local, stuff);
		assert_eq!(local, 1041);
	}

	#[test]
	fn overwrite_with_lesser_lifetime() {
		environmental!(items: Vec<u8>);

		let mut local_items = vec![1, 2, 3];
		items::using(&mut local_items, || {
			let dies_at_end = vec![4, 5, 6];
			items::with(|items| *items = dies_at_end);
		});

		assert_eq!(local_items, vec![4, 5, 6]);
	}

	#[test]
	fn declare_with_trait_object() {
		trait Foo {
			fn get(&self) -> i32;
			fn set(&mut self, x: i32);
		}

		impl Foo for i32 {
			fn get(&self) -> i32 { *self }
			fn set(&mut self, x: i32) { *self = x }
		}

		environmental!(foo: dyn Foo + 'static);

		fn stuff() {
			foo::with(|value| {
				let new_val = value.get() + 1;
				value.set(new_val);
			});
		}

		let mut local = 41i32;
		foo::using(&mut local, stuff);

		assert_eq!(local, 42);

		stuff(); // doesn't do anything.

		assert_eq!(local, 42);
	}

	#[test]
	fn unwind_recursive() {
		use std::panic;

		environmental!(items: Vec<u8>);

		let panicked = panic::catch_unwind(|| {
			let mut local_outer = vec![1, 2, 3];

			items::using(&mut local_outer, || {
				let mut local_inner = vec![4, 5, 6];
				items::using(&mut local_inner, || {
					panic!("are you unsafe?");
				})
			});
		}).is_err();

		assert!(panicked);

		let mut was_cleared = true;
		items::with(|_items| was_cleared = false);

		assert!(was_cleared);
	}

	#[test]
	fn use_non_static_trait() {
		trait Sum { fn sum(&self) -> usize; }
		impl Sum for &[usize] {
			fn sum(&self) -> usize {
				self.iter().fold(0, |a, c| a + c)
			}
		}

		environmental!(sum: trait Sum);
		let numbers = vec![1, 2, 3, 4, 5];
		let mut numbers = &numbers[..];
		let got_sum = sum::using(&mut numbers, || {
			sum::with(|x| x.sum())
		}).unwrap();

		assert_eq!(got_sum, 15);
	}

	#[test]
	fn stacking_globals() {
		trait Sum { fn sum(&self) -> usize; }
		impl Sum for &[usize] {
			fn sum(&self) -> usize {
				self.iter().fold(0, |a, c| a + c)
			}
		}

		environmental!(sum: trait Sum);
		let numbers = vec![1, 2, 3, 4, 5];
		let mut numbers = &numbers[..];
		let got_sum = sum::using(&mut numbers, || {
			sum::with(|_| {
				let numbers2 = vec![1, 2, 3, 4, 5, 6];
				let mut numbers2 = &numbers2[..];
				sum::using(&mut numbers2, || {
					sum::with(|x| x.sum())
				})
			})
		}).unwrap().unwrap();

		assert_eq!(got_sum, 21);

		assert!(sum::with(|_| ()).is_none());
	}

	#[test]
	fn use_generic_trait() {
		trait Plus { fn plus42() -> usize; }
		struct ConcretePlus;
		impl Plus for ConcretePlus {
			fn plus42() -> usize { 42 }
		}
		trait Multiplier<T: Plus> { fn mul_and_add(&self) -> usize; }
		impl<'a, P: Plus> Multiplier<P> for &'a [usize] {
			fn mul_and_add(&self) -> usize {
				self.iter().fold(1, |a, c| a * c) + P::plus42()
			}
		}

		let numbers = vec![1, 2, 3];
		let mut numbers = &numbers[..];
		let out = foo::<ConcretePlus>::using(&mut numbers, || {
			foo::<ConcretePlus>::with(|x| x.mul_and_add() )
		}).unwrap();

		assert_eq!(out, 6 + 42);
		environmental!(foo<Plus>: trait Multiplier<ConcretePlus>);
	}
}
