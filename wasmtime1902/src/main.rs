fn main() {
    let engine = wasmtime::Engine::default();

    let wat = r#"
    (module
        (import "env" "memory" (memory 1))
        (import "env" "print" (func $print (param i32)))
        (func (export "kek")
            (call $print (i32.const 142))
            (i32.load (i32.const 0x10001))
            drop
            (call $print (i32.const 142))
        )
        (data (i32.const 142) "Hello, World!")
        (global (export "global") i32 (i32.const 42))
    )"#;
    let module = wasmtime::Module::new(&engine, wat).unwrap();
    let mut store = wasmtime::Store::new(&engine, ());

    let mut linker = wasmtime::Linker::new(&engine);
    linker.func_wrap("env", "print", |mut caller: wasmtime::Caller<'_, ()>, x: u32| {
        let global = caller.get_export("global").unwrap().into_global().unwrap();
        let x = global.get(&mut caller);
        println!("Print: {:?}", x);
    }).unwrap();
    let memory = wasmtime::Memory::new(&mut store, wasmtime::MemoryType::new(1, None)).unwrap();
    linker.define(&mut store, "env", "memory", memory).unwrap();

    let i = linker.instantiate(&mut store, &module).unwrap();
    i.get_func(&mut store, "kek").unwrap().call(&mut store, &[], &mut []).unwrap();
    // let g = i.get_global(&mut store, "global").unwrap();

}
