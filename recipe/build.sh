#!/bin/bash

cmake ${CMAKE_ARGS} \
    -G Ninja \
    -DCMAKE_VERBOSE_MAKEFILE=TRUE \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DIGC_DIR=$PREFIX \
    -DNEO_SKIP_UNIT_TESTS=1 \
    -DOCL_ICD_VENDORDIR=$PREFIX/etc/OpenCL/vendors \
    -S . \
    -B ./build

cmake --build ./build
cmake --build ./build --target install
