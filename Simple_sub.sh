#!/bin/bash -l                                                                        

#SBATCH --job-name=simple_omp                                                         
#SBATCH --output=output.txt                                                              
#SBATCH --ntasks=1                                                                    
#SBATCH --cpus-per-task=32                                                             

enable_lmod
module load gcc/4
for v in $(seq 1 32)
do
export OMP_NUM_THREADS=$v
echo 4000|./simple_for_loop
done

