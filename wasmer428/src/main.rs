use std::borrow::Borrow;

use wasmer::FunctionEnvMut;

fn main() {
    let wat = r#"
        (module
            (import "env" "memory" (memory 1))
            (import "env" "print" (func $print (param i32)))
            (import "env" "load" (func $load (param i32) (result i32)))
            (func (export "kek")
                (local i64)
                (loop
                    ;; (call $print (i32.const 142))
                    (call $load (i32.const 1000))
                    call $load
                    ;; call $load
                    drop

                    (local.get 0)
                    (i64.const 1)
                    (i64.add)
                    (local.set 0)

                    (local.get 0)
                    (i64.const 1_000_000_000)
                    (i64.lt_s)
                    (br_if 0)
                )
            )
            (data (i32.const 142) "Hello, World!")
            (global (export "global") i32 (i32.const 42))
        )
    "#;
    let mut store = wasmer::Store::default();
    // use wasmer::CompilerConfig;
    // let mut singlepass = wasmer_compiler_singlepass::Singlepass::new();
    // let mut cranelift = wasmer::Cranelift::new();
    // cranelift.push_middleware(middleware)
    let module = wasmer::Module::new(&store, wat).unwrap();
    let memory = wasmer::Memory::new(&mut store, wasmer::MemoryType::new(1, None, false)).unwrap();
    let mem = memory.clone();

    let env = wasmer::FunctionEnv::new(&mut store, ());

    let load = wasmer::Function::new_typed_with_env(
        &mut store,
        &env,
        move |env: FunctionEnvMut<'_, ()>, arg: i32| -> i32 {
            let mut buf = [0u8; 4];
            mem.view(env.borrow())
                .read(arg as u64, buf.as_mut_slice())
                .unwrap();
            i32::from_le_bytes(buf)
        },
    );

    let imported_objects = wasmer::imports! {
        "env" => {
            "memory" => memory.clone(),
            "print" => wasmer::Function::new_typed(&mut store, |arg: i32| {
                println!("Println: {}", arg);
            }),
            "load" => load,
        }
    };

    let instance = wasmer::Instance::new(&mut store, &module, &imported_objects).unwrap();

    instance
        .exports
        .get_function("kek")
        .unwrap()
        .call(&mut store, &[])
        .unwrap();
    // let mut buf = [0u8; 4];
    // memory.view(&store).read(10, buf.as_mut_slice()).unwrap();
    // let x = i32::from_le_bytes(buf);

    // let global = instance.exports.get_global("global").unwrap();
    // global.set(store, val)
    // instance.exports.insert(name, value)
}

#[test]
fn test1() {
    let wat = r#"
        (module
            (memory (export "memory") 1)
            (func (export "main")
                i32.const 2
                global.set $a
                i32.const 0x10001
                i32.const 42
                i32.store
            )
            (global $a (export "a") (mut i32) (i32.const 1))
        )
    "#;
    let mut store = wasmer::Store::default();
    let module = wasmer::Module::new(&store, wat).unwrap();
    let imported_objects = wasmer::imports! {};
    let instance = wasmer::Instance::new(&mut store, &module, &imported_objects).unwrap();

    let res = instance
        .exports
        .get_function("main")
        .unwrap()
        .call(&mut store, &[]);
    assert!(res.is_err());

    let res = instance.exports.get_global("a").unwrap().get(&mut store);
    assert_eq!(res, wasmer::Value::I32(2));

    let mut buf = [0u8; 0x10000];
    instance
        .exports
        .get_memory("memory")
        .unwrap()
        .view(&mut store)
        .read(0, buf.as_mut_slice())
        .unwrap();
    assert_eq!(buf, [0u8; 0x10000]);
}

#[test]
fn test2() {
    let wat = r#"
        (module
            (func (param i32)
                local.get 0
                global.set $a
                local.get 0
                i32.const 1
                i32.add
                call 0
            )
            (func (export "main")
                i32.const 0
                call 0
            )
            (global $a (export "a") (mut i32) (i32.const 1))
        )
    "#;
    let mut store = wasmer::Store::default();
    let module = wasmer::Module::new(&store, wat).unwrap();
    let imported_objects = wasmer::imports! {};
    let instance = wasmer::Instance::new(&mut store, &module, &imported_objects).unwrap();

    let res = instance
        .exports
        .get_function("main")
        .unwrap()
        .call(&mut store, &[]);
    assert!(res.is_err());

    let res = instance.exports.get_global("a").unwrap().get(&mut store);
    assert_eq!(res, wasmer::Value::I32(65439));
}