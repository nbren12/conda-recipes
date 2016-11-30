#!/usr/bin/env bash


module load mpi/mvapich2-x86_64
FFTWCONF_ARGS="CC=mpicc CXX=mpicxx F77=mpif90 \
               MPICC=mpicc MPICXX=mpicxx \
               --enable-shared \
               --enable-mpi --enable-threads --prefix=$PREFIX"

CONFIGURE=./configure

# Single precision (fftw libraries have "f" suffix)
$CONFIGURE --enable-float --enable-sse --enable-avx ${FFTWCONF_ARGS}
make
make install

# Long double precision (fftw libraries have "l" suffix)
$CONFIGURE --enable-long-double ${FFTWCONF_ARGS}
make
make install

# Double precision (fftw libraries have no precision suffix)
$CONFIGURE --enable-sse2 --enable-avx ${FFTWCONF_ARGS}
make
make install

# Test suite
# tests are performed during building as they are not available in the
# installed package.
# Additional tests can be run with make smallcheck and make bigcheck
# cd tests && make check-local
# Additional tests can be run using the next two lines
#make smallcheck
