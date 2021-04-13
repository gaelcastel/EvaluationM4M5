#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/sort_bam-%j.out
#SBATCH --error=LOG/sort_bam-%j.err
#SBATCH --cpus-per-task=8

module load samtools

srun samtools sort --threads 8 -o SRR10390685_aligned_paired.bam SRR10390685_aligned_paired.filtered.bam
