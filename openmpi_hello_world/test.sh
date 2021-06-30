#!/bin/bash
#SBATCH --partition skl_usr_prod
#SBATCH --time=00:10:00
#SBATCH --account=ExaF_prod_0
#SBATCH --job-name=chiJM2
#SBATCH --output=out-slurm.joblog
#SBATCH -N 2
#SBATCH --mem=100GB
#SBATCH --ntasks-per-socket=16
#SBATCH --sockets-per-node=2
#SBATCH --ntasks-per-node=1

module use /marconi_work/ExaF_prod_0/spack/opt/spack/linux-centos7-broadwell/gcc-7.3.0/openmpi-3.1.4-y5h72wpeld6dtjazvmp6q3cr5ptzjxr4/

module load openmpi-3.1.4-gcc-7.3.0-y5h72wp

srun -display-allocation -N $SLURM_NTASKS hello
