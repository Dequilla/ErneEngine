#!/usr/bin/env bash
conan install . --output-folder=build --build=missing

flags=-DERNE_BUILD_TESTS=ON
cmake -G "Unix Makefiles" $flags  -S . -B build/

cd build
make
