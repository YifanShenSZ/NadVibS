######################################
#                                    #
#       Makefile for NadVibS         #
#                                    #
######################################

compiler = mpif90
GAInc  = /home-4/yshen57@jhu.edu/work/yshen/Software/ga-5-4/include
MPIInc = /software/apps/mpi/openmpi/3.1/intel/18.0/include
src = NadVibS.f90
exe = NadVibS.exe
flag = -m64 -xCORE-AVX2 -mtune=core-avx2 -mkl -I$(GAInc) -I$(MPIInc) -fpp -i8 -auto -assume byterecl -ipo -O3 -no-prec-div -fp-model fast=2

$(exe): $(src)
	export BLAS_I8=yes
	$(compiler) $(flag) $^ libcomex.a libga.a libarmci.a -o $(exe)

clean:
	rm $(exe)
	rm *.mod
