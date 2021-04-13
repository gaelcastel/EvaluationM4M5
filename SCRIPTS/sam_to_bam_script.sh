#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/sam_to_bam-%j.out
#SBATCH --error=LOG/sam_to_bam-%j.err
#SBATCH --cpus-per-task=8

module load samtools

srun samtools view -hbS --threads 8 -q 30 -o SRR10390685_aligned_paired.filtered.bam  SRR10390685_aligned_paired.sam
