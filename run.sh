#!/bin/bash
#SBATCH --job-name=deepflux
#SBATCH --ntasks=1
#SBATCH --time=24:00:00
#SBATCH --mem=30G
#SBATCH --partition=unkillable                      
#SBATCH --cpus-per-task=6                    
#SBATCH --gres=gpu:rtx8000:1                          
#SBATCH --output=/home/mila/y/yuyan.chen/projects/SDL-Skeleton/deepflux.out

# 1. Load the required modules
module load anaconda/3

# 2. Load your environment
conda activate mothenv

python -u train.py