#!/bin/bash

set -x -u -e

kotlinc lib.kt -produce dynamic -output demo

if [ -f libdemo.dylib ]; then
  clang main.c libdemo.dylib
  ./a.out
elif [ -f libdemo.so ]; then
  gcc main.c libdemo.so
  LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./a.out
fi




