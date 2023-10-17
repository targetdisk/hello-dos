#!/usr/bin/env bash

. util/env.bash

export TOPDIR=$(git rev-parse --show-toplevel)
export CROSSDIR="$TOPDIR/cross"

add_path "$CROSSDIR/bin"
