use kdy1_test_common::foo;

#[no_mangle]
pub extern "C" fn swc_process() {
    foo();
}
