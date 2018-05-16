#!/bin/bash

set -e -x -u

rm -rf *-build *.o *.a *.klib *exe | true

gcc -mmacosx-version-min=10.10 -c "-I$(pwd)" lib.c -o lib.o
ar rcs lib.a lib.o

gcc -mmacosx-version-min=10.10 -c  main.c -o main.o
ld -macosx_version_min 10.10  -lc  main.o lib.a


