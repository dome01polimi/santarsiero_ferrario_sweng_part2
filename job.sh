#!/bin/bash -l
#SBATCH --cpus-per-task=1                                           # Set the number of CORES per task
#SBATCH --nodes=1                                                   # number of nodes
#SBATCH --ntasks=2                                                  # number of tasks
#SBATCH --ntasks-per-node=2                                         # number of tasks per node
#SBATCH --time=01:00:00                                             # time (HH:MM:SS)
#SBATCH --partition=g100_usr_prod                                   # partition
#SBATCH --account=tra23_bbs                                         # project account

home_path="/g100/home/usertrain/a08trb58/"

mkdir -p $home_path/out

singularity test $home_path"to_send/container.sif" 2> ../out/test.stderr > ../out/test.stdout 
singularity run $home_path"to_send/container.sif" 2> ../out/program.stderr > ../out/program.stdout