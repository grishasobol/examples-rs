/// Allow user to make external function code with already loaded
/// current message payload to stack buffer.
///
/// # Usage
///
/// ```ignore
/// #[gstd::message_read_on_stack]
/// fn handle(read_result: Result<&mut [u8]>) {
///     let payload: &mut [u8] = read_result.expect("Unable to read");
///     // Do something with `payload`
/// }
///
/// #[gstd::message_read_on_stack]
/// fn init(read_result: Result<&mut [u8]>) {
///     let payload: &mut [u8] = read_result.expect("Unable to read");
///     // Do something with `payload`
/// }
/// ```
///
/// #### Output:
///
/// ```ignore
/// #[no_mangle]
/// extern "C" fn handle() {
///     gstd::with_read_on_stack(|read_result: Result<&mut [u8]>| {
///         let payload: &mut [u8] = read_result.expect("Unable to read");
///         // Do something with `payload`
///     });
/// }
///
/// #[no_mangle]
/// extern "C" fn init(read_result: Result<&mut [u8]>) {
///     gstd::with_read_on_stack(|read_result: Result<&mut [u8]>| {
///         let payload: &mut [u8] = read_result.expect("Unable to read");
///         // Do something with `payload`
///     });
/// }
/// ```
///
/// # IMPORTANT:
/// 1) Input function must not have another attributes.
/// 2) Input function return type must be `()`.
/// 3) Because of `1)` cannot be used with async macros.
///
#[proc_macro_attribute]
pub fn message_read_on_stack(_attr: TokenStream, item: TokenStream) -> TokenStream {
    let ast = parse_macro_input!(item as ItemFn);

    if !ast.attrs.is_empty() {
        panic!("Cannot work with other attributes");
    }

    // Check return type
    match &ast.sig.output {
        ReturnType::Default => {}
        _ => panic!("Return type must be `()`"),
    }

    let fn_name = &ast.sig.ident;
    let block = &ast.block;

    // Extract argument name from function
    let arg_name = match ast.sig.inputs.first().unwrap() {
        FnArg::Typed(PatType { pat, .. }) => match **pat {
            Pat::Ident(ref pat_ident) => pat_ident.ident.clone(),
            _ => panic!("Expected ident pattern type"),
        },
        _ => panic!("Expected typed function argument"),
    };

    let gen = quote! {
        #[no_mangle]
        extern "C" fn #fn_name() {
            gstd::msg::with_read_on_stack(|#arg_name| #block);
        }
    };

    gen.into()
}