#!/usr/bin/env bash
set -eu


# (cd plugin_a && cargo build)
otool -L plugin_a/target/debug/libplugin_a.dylib
rm -f plugin_a/target/debug/libkdy1_test_common.dylib
(cd runtime && cargo build)
(cd runtime && cargo test)

# Ensure that we link common into runtime statically.
otool -L runtime/target/debug/libruntime.dylib
