/// Force linking
extern crate kdy1_test_common;

pub fn call_dynamic() -> Result<u32, Box<dyn std::error::Error>> {
    unsafe {
        let lib = libloading::Library::new("../plugin_a/target/debug/libplugin_a.dylib")?;
        let func: libloading::Symbol<unsafe extern "C" fn() -> u32> = lib.get(b"swc_process")?;
        Ok(func())
    }
}
