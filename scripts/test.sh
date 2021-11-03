#!/usr/bin/env bash
set -eu


(cd plugin_a && cargo build)
(cd runtime && cargo build)