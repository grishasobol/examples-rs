#[cfg(test)]
mod mod_test {
    use arbitrary::{unstructured, Arbitrary, Unstructured};
    use gear_program::api::generated::api::gear::calls::UploadProgram;
    use parity_wasm::elements::{
        ExportEntry, External, Func, FuncBody, FunctionType, ImportEntry, ImportSection,
        Instruction, Instructions, Internal, MemorySection, MemoryType, Module as PModule,
    };
    use parity_wasm::elements::{ExportSection, Section, Type};
    use rand::{rngs::SmallRng, RngCore, SeedableRng};
    use std::fs;
    use std::fs::File;
    use std::io::Write;
    use std::thread::sleep;
    use std::time::Duration;
    use wasm_smith::{Config, ConfiguredModule, Module, SwarmConfig};
    use wasm_smith::{InstructionKind::*, InstructionKinds};
    use wasmparser::WasmFeatures;

    #[derive(Clone, Copy, Debug)]
    struct Ratio {
        numerator: u32,
        denominator: u32,
    }

    impl Ratio {
        pub fn ratio_bool(&self, u: &mut Unstructured) -> bool {
            u.ratio(self.numerator, self.denominator).unwrap()
        }
    }

    impl From<(u32, u32)> for Ratio {
        fn from(p: (u32, u32)) -> Self {
            Self {
                numerator: p.0,
                denominator: p.1,
            }
        }
    }

    struct GearConfig {
        pub make_init_prob: Ratio,
        pub make_init_when_no_funcs: Ratio,
        pub skip_when_no_func: Ratio,
    }

    impl Default for GearConfig {
        fn default() -> Self {
            let prob = (99, 100).into();
            Self {
                make_init_prob: prob,
                make_init_when_no_funcs: prob,
                skip_when_no_func: prob,
            }
        }
    }

    impl GearConfig {
        pub fn new_rare_cases() -> Self {
            let prob = (1, 2).into();
            Self {
                make_init_prob: prob,
                make_init_when_no_funcs: prob,
                skip_when_no_func: prob,
            }
        }
    }

    // #[macro_export]
    // macro_rules! ratio_bool {
    //     ($config:expr, $name:ident, $u:expr) => {{
    //         let p = ($config.$name.0, $config.$name.1);
    //         $u.ratio(p.0, p.1).unwrap()
    //     }};
    // }

    async fn gen_wasm(seed: u64) {
        let mut rng = SmallRng::seed_from_u64(seed);
        let mut buf = vec![0; 20240];
        rng.fill_bytes(&mut buf);
        let mut u = Unstructured::new(&buf);

        let mut cfg: SwarmConfig = u.arbitrary().unwrap();
        cfg.allowed_instructions = InstructionKinds::new(&[
            Numeric, Control, Parametric, Variable, Reference, Table, Memory,
        ]);
        cfg.sign_extension_enabled = false;
        cfg.saturating_float_to_int_enabled = false;
        cfg.reference_types_enabled = false;
        cfg.bulk_memory_enabled = false;
        cfg.simd_enabled = false;
        cfg.float_enabled = false;
        cfg.relaxed_simd_enabled = false;
        cfg.exceptions_enabled = false;
        cfg.memory64_enabled = false;
        cfg.allow_start_export = false;
        cfg.multi_value_enabled = false;
        cfg.memory_grow_enabled = false;

        let gear_config = GearConfig::default();

        // cfg.available_imports =
        //     Some(wat::parse_str(r#"(module (import "env" "memory" (memory 100)))"#).unwrap());

        cfg.max_memories = 1;
        cfg.max_tables = 1;

        cfg.min_exports = 0;
        cfg.max_exports = 0;

        cfg.max_imports = 0;
        cfg.min_imports = 0;

        cfg.max_instructions = 1000000;
        cfg.max_memory_pages = 512;
        cfg.max_funcs = 100;

        if let Ok(module) = Module::new(cfg, &mut u) {
            // let mut file = File::create("lol.wasm").expect("LOL");
            // let _ = file.write(&wasm_bytes);

            let wasm_bytes = module.to_bytes();
            // println!("{}", wasmprinter::print_bytes(&wasm_bytes).unwrap());

            let mut x: PModule =
                wasm_instrument::parity_wasm::deserialize_buffer(&wasm_bytes).unwrap();

            let mut mem_section_idx = None;
            for i in 0..x.sections().len() {
                match x.sections()[i] {
                    Section::Memory(_) => {
                        mem_section_idx = Some(i);
                        break;
                    }
                    _ => {}
                }
            }
            mem_section_idx.map(|index| x.sections_mut().remove(index));

            let external = External::Memory(MemoryType::new(512, None));
            let mem = ImportEntry::new("env".into(), "memory".into(), external);
            if let Some(import_section) = x.import_section_mut() {
                import_section.entries_mut().push(mem);
            } else {
                let import_section = Section::Import(ImportSection::with_entries(vec![mem]));
                x.insert_section(import_section).unwrap();
            }

            if x.function_section().is_some() && !x.function_section().unwrap().entries().is_empty()
            {
                // Make init function type
                let type_idx = x.type_section().unwrap().types().len() as u32;
                x.type_section_mut()
                    .unwrap()
                    .types_mut()
                    .push(Type::Function(FunctionType::new(Vec::new(), Vec::new())));

                let func = Func::new(type_idx);
                x.function_section_mut().unwrap().entries_mut().push(func);

                // Add init function code
                let func0 = x.function_section().unwrap().entries()[0];
                let t = func0.type_ref();
                let t = &x.type_section().unwrap().types()[t as usize];
                let Type::Function(t) = t;
                let mut code = Vec::new();
                for p in t.params() {
                    let instr = match p {
                        parity_wasm::elements::ValueType::I32 => {
                            Instruction::I32Const(u.arbitrary().unwrap())
                        }
                        parity_wasm::elements::ValueType::I64 => {
                            Instruction::I64Const(u.arbitrary().unwrap())
                        }
                        _ => panic!("Cannot handle f32/f64"),
                    };
                    code.push(instr);
                }
                code.push(Instruction::Call(0));
                for _ in t.results() {
                    code.push(Instruction::Drop);
                }
                code.push(Instruction::End);
                x.code_section_mut()
                    .unwrap()
                    .bodies_mut()
                    .push(FuncBody::new(Vec::new(), Instructions::new(code)));

                // Make new export
                let idx = x.function_section().unwrap().entries().len() as u32 - 1;
                let exp = ExportEntry::new("init".into(), Internal::Function(idx));
                let export_section = Section::Export(ExportSection::with_entries(vec![exp]));
                x.insert_section(export_section).unwrap();
            } else {
                if gear_config.skip_when_no_func.ratio_bool(&mut u) {
                    return;
                }
            }

            let code = parity_wasm::serialize(x).unwrap();

            let x = wasmprinter::print_bytes(&code).unwrap();
            println!("{}", x);
            println!("\n\n\n\n\n");
            // let mut file = File::create("lol.wasm").expect("LOL");
            // let _ = file.write(&code);

            // let code = fs::read("lol.wasm").unwrap();

            gear_program::keystore::login("//Alice", None).unwrap();
            let signer = gear_program::api::Api::new(Some("ws://127.0.0.1:9944".into()))
                .await
                .unwrap()
                .try_signer(None)
                .unwrap();
            let params = UploadProgram {
                code: code.clone(),
                salt: hex::decode("00").unwrap(),
                init_payload: hex::decode("00").unwrap(),
                gas_limit: 250_000_000_000,
                value: 0,
            };
            let res = signer.submit_program(params).await.unwrap();
            // println!("{:?}", res);
        }
    }

    #[tokio::test]
    async fn test() {
        let n: u64 = 123272;
        for i in n..n + 1000 {
            gen_wasm(i).await;
        }
    }
}
