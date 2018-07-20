cmake_minimum_required(VERSION 3.8)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/KotlinCMakeModule)

project(untitled_curlk Kotlin)

cinterop(
        NAME lib_kt
        DEF_FILE lib.def
        COMPILER_OPTS "-I ${CMAKE_CURRENT_SOURCE_DIR}"

)

konanc_executable(
        NAME main
        SOURCES main.kt
        LIBRARIES lib_kt
)


