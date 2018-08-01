#!/bin/bash

set -x -u -e

kotlinc lib.kt -produce dynamic -output demo

if [ -f libdemo.dylib ]; then
  gcc main.c libdemo.dylib
elif [ -f libdemo.so ]; then
  gcc main.c libdemo.so
fi

LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH ./a.out


