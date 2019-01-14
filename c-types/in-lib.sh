#!/bin/bash

set -e -x -u

rm -rf *-build *.o *.a *.klib *exe | true

gcc -c "-I$(pwd)" lib.c -o lib.o
ar rcs lib.a lib.o


cinterop -def lib.def -compilerOpts "-I." -o lib.klib

klib contents lib.klib



