#!/usr/bin/env bash

BUILD_TYPE=Release
CXX_STANDARD=20

conan_settings="-s compiler.cppstd=$CXX_STANDARD -s build_type=$BUILD_TYPE"
conan install . --build=missing $conan_settings 

flags="-DERNE_BUILD_TESTS=ON -DCMAKE_CXX_STANDARD=$CXX_STANDARD"
BUILD_TYPE_LOWER="$(echo "$BUILD_TYPE" | awk '{print tolower($0)}')"
cmake --preset conan-$BUILD_TYPE_LOWER -S . 
cmake --build ./build/ --preset conan-$BUILD_TYPE_LOWER 
