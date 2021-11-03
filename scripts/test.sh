#!/usr/bin/env bash
set -eu


(cd plugin_a && cargo build)
otool -L plugin_a/target/debug/libplugin_a.dylib
(cd runtime && cargo test)