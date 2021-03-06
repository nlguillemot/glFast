#!/bin/bash
cd "$(dirname -- "$(readlink -fn -- "${0}")")"

app="bin/app"

cflags="-std=c11 -g -O0 -Werror=return-type -Wconversion -Wgnu-empty-initializer"
lflags="-lSDL2 -lm ${@}"

set -x

rm -f $app

clang -o $app main.c $cflags $lflags
