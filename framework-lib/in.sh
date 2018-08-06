#!/bin/bash

set -x -u -e


kotlinc lib.kt -produce framework -output macOS/Demo

kotlinc lib.kt -produce framework -target ios_arm64 -output iOS/Demo
kotlinc lib.kt -produce framework -target ios_x64 -output iOS_emu/Demo




