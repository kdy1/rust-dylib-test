# rust-dylib-test

# Steps

1. Run `cargo build` in `plugin_a`
2. Ensure that `plugin_a` dynamically links to `runtime/common` by `otool -L plugin_a/target/debug/libplugin_a.dylib`. It should contain `libkdy1_test_common.dylib`.
3. Change `crate-type of` `runtime/common` to `rlib`.
4. Run `cargo build` in `runtime`.
5. Ensure that `runtime` statically links `runtime/common` by `otool -L runtime/target/debug/libruntime.dylib`. It should not contain `libkdy1_test_common.dylib`.
6. Run `cargo test` in `runtime`. It will dynamically load `plugin_a.dylib`.
