#!/bin/bash
#SBATCH --account=phuongln6
#SBATCH --gpus=1                                    # total number of GPUs
#SBATCH --output=slurm-out/train-vs-%j.out             # output file location
#export OMP_NUM_THREADS=32
source vs/bin/activate
export https_proxy=http://acct:pwd@10.16.29.21:8080

srun python pytorch/train/train_baseline.py
