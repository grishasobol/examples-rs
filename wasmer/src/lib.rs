
extern crate wasmer;
use wasmer::{Store, Module, Instance, Value, imports, Memory, MemoryType};

#[test]
fn test() {
    let module_wat = r#"
    (module
        (import "env" "memory" (memory 1))
        (type $t0 (func (param i32) (result i32)))
        (func $add_one (export "add_one") (type $t0) (param $p0 i32) (result i32)
            i32.const 1
            i32.popcnt
            drop

            ;; i32.const 0xf0000
            ;; i32.load
            ;; drop

            get_local $p0
            i32.const 1
            i32.add
        )
    )"#;

    let store = Store::default();
    let module = Module::new(&store, &module_wat).unwrap();
    let memory = Memory::new(&store, MemoryType::new(1, None, false)).unwrap();
    // The module doesn't import anything, so we create an empty import object.
    let import_object = imports! {
        "env" => {
            "memory" => memory,
        }
    };
    let instance = Instance::new(&module, &import_object).unwrap();

    let add_one = instance.exports.get_function("add_one").unwrap();
    let result = add_one.call(&[Value::I32(42)]);
    println!("{:?}", result);
    // assert_eq!(result[0], Value::I32(43));
}
