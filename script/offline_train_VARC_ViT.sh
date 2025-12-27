#!/bin/bash
#SBATCH --job-name=test
#SBATCH --output=job_output.txt
#SBATCH --error=job_error.txt
#SBATCH --ntasks=1
#SBATCH --time=10:00
#SBATCH --mem=32Gb
#SBATCH --gres=gpu:1
#SBATCH --partition=main 


uv run torchrun --nproc_per_node=1 offline_train_ARC.py \
  --epochs 100 \
  --depth 10 \
  --batch-size 32 \
  --image-size 64 \
  --patch-size 2 \
  --learning-rate 3e-4 \
  --weight-decay 0 \
  --embed-dim 512 \
  --num-heads 8 \
  --include-rearc \
  --num-colors 12 \
  --data-root "raw_data/ARC-AGI" \
  --train-split "training" \
  --wandb-project "VisionARC" \
  --wandb-run-name "offline_train_VARC" \
  --save-path "saves/offline_train_ViT/checkpoint_final.pt" \
  --best-save-path "saves/offline_train_ViT/checkpoint_best.pt" \
  --lr-scheduler "cosine" \
  --architecture "vit" \
  --vis-every 50 \
  --distributed \
  --use-wandb \
