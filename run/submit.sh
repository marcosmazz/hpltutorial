#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=1
#SBATCH --partition=multi
#SBATCH --reservation=hpltutorial

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
export MKL_NUM_THREADS=$SLURM_CPUS_PER_TASK

module use /home/shared/tutorial/modules
module load hpl/oneapi-intel-oneapi-mkl

srun xhpl 
