#!/bin/bash
#SBATCH --job-name=hello_slurm           # job name
#SBATCH --output=hello_slurm_%j.out      # STDOUT → hello_slurm_<jobid>.out
#SBATCH --error=hello_slurm_%j.err       # STDERR → hello_slurm_<jobid>.err
#SBATCH --time=00:02:00                  # time
#SBATCH --partition=k2-hipri             # partition
#SBATCH --ntasks=1                       # single‐process job
#SBATCH --cpus-per-task=1                # one CPU
#SBATCH --mem-per-cpu=1G                 # 1 GB RAM
#SBATCH --mail-type=ALL       # email on start, end, or fail
#SBATCH --mail-user=josephmcinerney7575@gmail.com # replace with your email

module load python/3.10.5                   # load Python
cd $SLURM_SUBMIT_DIR                     # ensure we’re in the project dir
srun python hello_slurm.py               # run your script
