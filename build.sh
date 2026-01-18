#!/bin/bash

if [ ! -d build ]; then
	mkdir build
fi
cmake -DCMAKE_BUILD_TYPE=Release -S . -B build
cmake --build build

