#!/bin/bash

set -e -x -u

kotlinc-native utils.kt -p library -o utils


REPO=~/.konan/klib

rm -rf   $REPO || true
mkdir -p $REPO || true

klib install utils


ls -lah $REPO

rm -rf utils.klib

kotlinc-native sample.kt -l utils

./program.kexe


