#!/bin/bash
#SBATCH --time=24:00:00
#SBATCH --gres=gpu:2

source ~/.bashrc
cd /mnt/beegfs/home/hallo/medhalt
export PYTHONPATH=$PYTHONPATH:/people/dicko/medhalt/
conda activate tgi
 ./run_inference.sh ../haloscope/models/opt-13b
conda deactivate

sleep 10
