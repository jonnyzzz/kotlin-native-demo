#!/bin/bash

set -e -x -u

klib contents lib.klib

kotlinc-native -l lib.klib main.kt -linker-options lib.a -o main.kexe

./main.kexe

