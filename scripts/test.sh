#!/usr/bin/env bash
set -eu


(cd plugin_a && cargo build)
otool -L plugin_a/target/debug/libplugin_a.dylib
rm plugin_a/target/debug/libkdy1_test_common.dylib
(cd runtime && cargo test)