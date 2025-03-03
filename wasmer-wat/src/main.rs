// use wasmtime::*;

// fn main() {
//     // Embedded WAT code.
//     let wat = r#"
//         (module
//           (func $extend_and_compare (param i32) (result i32)
//             local.get 0
//             i32.const 128
//             i32.and
//             ;;i32.extend8_s
//             ;;i32.const -1
//             ;;i32.le_s
//             i32.eqz
//           )
//           (export "extend_and_compare" (func $extend_and_compare))
//         )
//     "#;

//     // Create an engine and compile the module.
//     let engine = Engine::default();
//     let module = Module::new(&engine, wat).unwrap();

//     // Create a store and instantiate the module.
//     let mut store = Store::new(&engine, ());
//     let instance = Instance::new(&mut store, &module, &[]).unwrap();

//     // Get the `extend_and_compare` function from the instance.
//     let extend_and_compare = instance
//         .get_func(&mut store, "extend_and_compare")
//         .unwrap()
//         .typed::<i32, i32>(&store)
//         .unwrap();

//     // extend_and_compare.call(&mut store).unwrap( );

//     // Prepare the parameter and call the function.
//     let result = extend_and_compare.call(&mut store, 0xA3u8 as i32).unwrap();
//     println!("Result {}", result);
// }

use wasmi::*;

fn main() {
    let wat = r#"
        (module
          (func $extend_and_compare (param i32) (result i32)
            local.get 0
            ;; i32.const 0x80
            ;; i32.and
            i32.extend8_s
            i32.const -1
            i32.le_s
            ;; i32.eqz
          )
          (export "extend_and_compare" (func $extend_and_compare))
        )
    "#;

    // Compile WAT to WebAssembly bytecode.
    let wasm_binary = wat::parse_str(wat).unwrap();

    let module = Module::from_buffer(&wasm_binary).unwrap();
    let instance = ModuleInstance::new(&module, &ImportsBuilder::default())
        .unwrap()
        .assert_no_start();
    let x = instance
        .invoke_export(
            "extend_and_compare",
            &[RuntimeValue::I32(0xA3)],
            &mut NopExternals,
        )
        .unwrap()
        .unwrap();

    println!("Result {:?}", x);

    // let engine = Engine::default();
    // let mut store = Store::new(&engine, ());
    // let linker = Linker::new(&engine);

    // // Load the WebAssembly module.
    // let module = Module::new(&engine, wasm_binary.as_slice()).unwrap();

    // // Create module instance.
    // let instance = linker
    //     .instantiate(&mut store, &module)
    //     .unwrap()
    //     .ensure_no_start(&mut store)
    //     .unwrap();

    // // Call `extend_and_compare` function.
    // let mut outputs = [Value::I32(111)];
    // instance
    //     .get_export(&store, "extend_and_compare")
    //     .unwrap()
    //     .into_func()
    //     .unwrap()
    //     .call(&mut store, &[Value::I32(0xA3)], &mut outputs)
    //     .unwrap();

    // println!("Result {:?}", outputs);

    // let module = wasmi::Module::try_from(wat.as_bytes()).unwrap();
    // let instance = wasmi::ModuleInstance::new(&module, &wasmi::ImportsBuilder::default()).unwrap();
    // let mut runtime = wasmi::RuntimeValue::I32(0);
    // let result = instance.invoke_export(
    //     "extend_and_compare",
    //     &[wasmi::RuntimeValue::I32(0xA3u8 as i32)],
    //     &mut runtime,
    //     &mut wasmi::NopExternals,
    // );
    // println!("Result {:?}", result);
}
