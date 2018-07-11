#!/bin/bash

set -e -x -u

rm -rf *-build *.o *.a *.klib *exe | true

cinterop -def lib.def -compilerOpts "-I$(pwd)" -o lib.klib

## konanc -l lib.klib main.kt -linkerOpts lib.a -o main.kexe
##
## ./main.kexe

