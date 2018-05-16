#!/bin/bash

KONAN_VERSION=0.7
export PATH=$(cd ~/kotlin-native/kotlin-native-macos-$KONAN_VERSION/bin && pwd):$PATH

ACTUAL_VERSION=$(kotlinc -version 2>/dev/null)

if [[ ! "$ACTUAL_VERSION" =~ "$KONAN_VERSION" ]] ; then 
  echo "Failed to setup Kotlin/Native of version $KONAN_VERSION. Have $ACTUAL_VERSION" >&2
  sleep 10
fi



