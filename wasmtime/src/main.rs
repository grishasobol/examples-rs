extern crate wasmtime;
extern crate anyhow;

use std::{rc::Rc, cell::RefCell};

use anyhow::Result;
use wasmtime::*;

fn main() -> Result<()> {
    // Modules can be compiled through either the text or binary format
    let engine = Engine::default();
    let wat = r#"
        (module
            (type (;0;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32)))
            (import "env" "hello" (func (;0;) (type 0)))
            (func (export "hello")
                i32.const 1
                i32.const 2
                i32.const 3
                i32.const 4
                i32.const 5
                i32.const 6
                i32.const 7
                i32.const 8
                i32.const 9
                call 0)
        )
    "#;
    let module = Module::new(&engine, wat)?;

    // All wasm objects operate within the context of a "store". Each
    // `Store` has a type parameter to store host-specific data, which in
    // this case we're using `4` for.
    let mut store = Store::new(&engine, 4);
    let mut x: Rc<RefCell<u32>> = Rc::from(RefCell::from(10));
    let host_hello = Func::wrap(&mut store, |caller: Caller<'_, u32>, a1: i32,a2: i32,a3: i32,a4: i32,a5: i32,a6: i32,a7: i32,a8: i32,a9: i32| {
        println!("Got from WebAssembly: {} {} {} {} {} {} {} {} {}", a1, a2, a3, a4, a5, a6, a7, a8, a9);
        let a = x.borrow_mut();
        println!("my host state is: {}", caller.data());
    });

    // Instantiation of a module requires specifying its imports and then
    // afterwards we can fetch exports by name, as well as asserting the
    // type signature of the function with `get_typed_func`.
    let instance = Instance::new(&mut store, &module, &[host_hello.into()])?;
    let hello = instance.get_typed_func::<(), (), _>(&mut store, "hello")?;

    // And finally we can call the wasm!
    hello.call(&mut store, ())?;

    Ok(())
}
