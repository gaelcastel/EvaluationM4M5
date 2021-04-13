#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/bam_to_bai-%j.out
#SBATCH --error=LOG/bam_to_bai-%j.err
#SBATCH --cpus-per-task=8

module load samtools

srun samtools index -@ 8 ALIGNMENT/reads_intersect_trmNF.bam
