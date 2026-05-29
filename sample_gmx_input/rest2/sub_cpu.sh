#!/bin/bash
#SBATCH -J rest4M  ## job name
#SBATCH -A m4269  ## account
#SBATCH -C cpu ## --constraint=cpu
#SBATCH -q regular
#SBATCH -t 24:00:00
#SBATCH -N 14
#SBATCH --ntasks-per-node=128 ## 1 physical cpu per mpi task
#SBATCH -c 2 ## --cpu-bind, One cpu node has 2 cpus. One gpu node has 64 cpu cores, 2 threads/core.

#export SLURM_CPU_BIND="cores"
#export OMP_NUM_THREADS=2 # give it to auto setting.

echo 'cpu'
module purge
module load PrgEnv-gnu 
module load gromacs/2021.5-plumed
export GMXLIB=/pscratch/sd/x/xluo2/top

#srun gmx_mpi mdrun -multidir  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606 -deffnm nvtequil -cpi nvtequil.cpt

#source ./perlmutter_gen_nvtprod.sh
#srun gmx_mpi mdrun -multidir  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606 -replex 5000 -hrex -plumed plumed.dat -deffnm nvtprod

#source ./perlmutter_gen_nvtprod2.sh
#srun gmx_mpi mdrun -multidir  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606 -replex 5000 -hrex -plumed plumed.dat -deffnm nvtprod2

#source ./perlmutter_gen_nvtprod3.sh
#srun gmx_mpi mdrun -multidir  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606 -replex 5000 -hrex -plumed plumed.dat -deffnm nvtprod3

#source ./perlmutter_gen_nvtprod4.sh
srun gmx_mpi mdrun -multidir  T300 T318 T337 T356 T377 T398 T420 T444 T468 T493 T520 T547 T576 T606 -replex 5000 -hrex -plumed plumed.dat -deffnm nvtprod4 -cpi nvtprod4

