#!/bin/bash

set -e -x -u

rm -rf *-build *.o *.a *.klib *exe | true

gcc -mmacosx-version-min=10.10 -c "-I$(pwd)" lib.c -o lib.o
ar rcs lib.a lib.o

cinterop -def lib.def -compilerOpts "-I$(pwd)" -o lib.klib

konanc -l lib.klib main.kt -linkerOpts lib.a -o main.kexe

./main.kexe

