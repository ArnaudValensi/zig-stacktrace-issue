#!/bin/sh

set -x

rm *.obj

zig.exe build-obj stacktrace.zig
clang.exe -c main.c -g
clang.exe main.o stacktrace.obj -o main.exe -lntdll
