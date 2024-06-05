#!sinu/bin/bash
#SBATCH --job-name=run-Singularity-container                        # Job name
#SBATCH --cpus-per-task=1                                           # Set the number of CORES per task
#SBATCH --nodes=1                                                   # number of nodes
#SBATCH --ntasks=2                                                  # number of tasks
#SBATCH --ntasks-per-node=2                                         # number of tasks per node
#SBATCH --time=01:00:00                                             # Set a limit on the total run time
#SBATCH --partition=g100_all_serial                                 # partition
#SBATCH --account=tra24_sepolimi                                    # project account
#SBATCH -o ../out/%x-%j.out                                         # File to which STDOUT will be written
#SBATCH -e ../out/%x-%j.err                                         # File to which STDERROR will be written

export HOME_PATH ="/g100/home/usertrain/a08trb58/"

module load singularity

mkdir -p $HOME_PATH/out

singularity run -C $HOME_PATH"to_send/container.sif"