#!/bin/bash

kotlinc lib.kt -produce dynamic -output demo

gcc main.c libdemo.dylib


