extern crate proc_macro;

// use proc_macro::TokenStream;
// use quote::quote;
// use syn::{parse_macro_input, ItemFn};

trait Size {
    fn size(&self) -> usize;
}

impl Size for &[u8] {
    fn size(&self) -> usize {
        self.len()
    }
}

impl Size for &[u32] {
    fn size(&self) -> usize {
        self.len() * 4
    }
}

impl Size for u8 {
    fn size(&self) -> usize {
        1
    }
}

impl Size for u32 {
    fn size(&self) -> usize {
        4
    }
}

// #[proc_macro_attribute]
// pub fn gen_extern_call(_attr: TokenStream, item: TokenStream) -> TokenStream {
//     // Parse the input tokens into a syntax tree
//     let input = parse_macro_input!(item as ItemFn);

//     // Extract the function name
//     let fn_name = &input.sig.ident;

//     // Extract the arguments
//     let args: Vec<_> = input.sig.inputs.iter().map(|arg| {
//         match arg {
//             syn::FnArg::Typed(cap) => &cap.pat,
//             _ => panic!("Expected typed argument"),
//         }
//     }).collect();

//     // Generate the new function
//     let output = quote! {
//         pub fn #fn_name (#(#args: u32),*) -> u32 {
//             extern "C" {
//                 /// The extern function.
//                 pub fn ext_#fn_name (#(#args: u32),*) -> u32;
//             }
//             #( <#args as Size>::using_ffi_value(|#args|)* {
//                 ext_#fn_name(#(#args),*).into()
//             } #(*),*)
//         }
//     };

//     // Return the generated function
//     output.into()
// }

