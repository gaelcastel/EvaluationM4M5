#!/bin/bash

#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --output=OUTPUT/compress_fastq-%j.out
#SBATCH --error=LOG/compress_fastq-%j.err

module load  sra-tools
srun --cpus-per-task=8 fasterq-dump --split-files -p SRR10390685 --outdir FASTQ
