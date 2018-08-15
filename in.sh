#!/bin/bash

KONAN_VERSION=0.8.2

KONAN_INFIX=

### from https://stackoverflow.com/questions/3466166/how-to-check-if-running-in-cygwin-mac-or-linux

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     KONAN_INFIX=linux;;
    Darwin*)    KONAN_INFIX=macos;;
    CYGWIN*)    echo "Unsupported OS" ; exit 22;;
    MINGW*)     echo "Unsupported OS" ; exit 22;;
    *)          echo "Unknown OS"; exit 22;;
esac

export PATH=$(cd ~/kotlin-native/kotlin-native-$KONAN_INFIX-$KONAN_VERSION/bin && pwd):$PATH

ACTUAL_VERSION=$(kotlinc -version 2>/dev/null)

if [[ ! "$ACTUAL_VERSION" =~ "$KONAN_VERSION" ]] ; then 
  echo "Failed to setup Kotlin/Native of version $KONAN_VERSION. Have $ACTUAL_VERSION" >&2
  sleep 10
fi

# make sure we have all dependencies here
kotlinc --check_dependencies

