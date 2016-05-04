#!/usr/bin/env bash


FFTWCONF_ARGS="CC=mpicc CXX=mpicxx F77=mpif90 \
               MPICC=mpicc MPICXX=mpicxx \
               --enable-shared \
               --enable-mpi --enable-threads"

./configure --prefix=$PREFIX ${FFTWCONF_ARGS} 

make 
make install
make clean 
