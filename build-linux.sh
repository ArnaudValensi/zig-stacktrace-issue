#!/bin/sh

set -x

rm *.o

zig build-obj stacktrace.zig
clang -c main.c -g
clang stacktrace.o main.o -o main
