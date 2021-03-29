#!/bin/bash

mkdir build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_INSTALL_LIBDIR=lib \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_BUILD_TYPE=Release \
    -DIGC_DIR=$PREFIX \
    -DGMM_SOURCE_DIR=$PREFIX \
    -DTSAN_LIBS="-lrt" \
    -DOCL_ICD_VENDORDIR=$PREFIX/etc/OpenCL/vendors \
    ..

make -j${CPU_COUNT} VERBOSE=1
make install

