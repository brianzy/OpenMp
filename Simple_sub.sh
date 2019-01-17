#!/bin/bash -l                                                                        

#SBATCH --job-name=simple_omp                                                         
#SBATCH --output=output.txt                                                              
#SBATCH --ntasks=1                                                                    
#SBATCH --cpus-per-task=32                                                             

enable_lmod
module load gcc/4

export OMP_NUM_THREADS=1
./simple_for_loop
export OMP_NUM_THREADS=2
./simple_for_loop
export OMP_NUM_THREADS=3
./simple_for_loop
export OMP_NUM_THREADS=4
./simple_for_loop
export OMP_NUM_THREADS=5
./simple_for_loop
export OMP_NUM_THREADS=6
./simple_for_loop
export OMP_NUM_THREADS=7
./simple_for_loop
export OMP_NUM_THREADS=8
./simple_for_loop
export OMP_NUM_THREADS=9
./simple_for_loop
export OMP_NUM_THREADS=10
./simple_for_loop
export OMP_NUM_THREADS=11
./simple_for_loop
export OMP_NUM_THREADS=12
./simple_for_loop
export OMP_NUM_THREADS=13
./simple_for_loop
export OMP_NUM_THREADS=14
./simple_for_loop
export OMP_NUM_THREADS=15
./simple_for_loop
export OMP_NUM_THREADS=16
./simple_for_loop
export OMP_NUM_THREADS=17
./simple_for_loop
export OMP_NUM_THREADS=18
./simple_for_loop
export OMP_NUM_THREADS=19
./simple_for_loop
export OMP_NUM_THREADS=20
./simple_for_loop
export OMP_NUM_THREADS=21
./simple_for_loop
export OMP_NUM_THREADS=22
./simple_for_loop
export OMP_NUM_THREADS=23
./simple_for_loop
export OMP_NUM_THREADS=24
./simple_for_loop
export OMP_NUM_THREADS=25
./simple_for_loop
export OMP_NUM_THREADS=26
./simple_for_loop
export OMP_NUM_THREADS=27
./simple_for_loop
export OMP_NUM_THREADS=28
./simple_for_loop
export OMP_NUM_THREADS=29
./simple_for_loop
export OMP_NUM_THREADS=30
./simple_for_loop
export OMP_NUM_THREADS=31
./simple_for_loop
export OMP_NUM_THREADS=32
./simple_for_loop