kotlinc lib.kt -produce dynamic -output demo

lib /def:demo.def /out:demo.lib

cl main.c demo.lib

main.exe