#!/bin/bash

mkdir -p $PREFIX/lib

python2 ./configure --prefix=$PREFIX \
    --with-mpi=0 --with-debugging=0 --with-shared-libraries=1 \
    --with-blas-lapack-dir=$LIBRARY_PATH


make CFLAGS+="-fPIC"
make install
