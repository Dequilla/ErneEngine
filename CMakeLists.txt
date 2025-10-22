cmake_minimum_required(VERSION 3.15)

project(ErneEngine 
    LANGUAGES CXX
    VERSION 0.1.0
    DESCRIPTION "A homebrew rendering engine."
)
set( CMAKE_EXPORT_COMPILE_COMMANDS ON CACHE INTERNAL "" )

option(ERNE_BUILD_TESTS OFF)

if(ERNE_BUILD_TESTS)
    message(STATUS "[ERNE] Building tests!")
    add_subdirectory(test)
endif()

