cmake_minimum_required(VERSION 2.8)
project(cpp)
add_executable(main main.cpp)

add_library(mystuff SHARED stuff.cpp stuff.hpp)

target_link_libraries (main mystuff)
