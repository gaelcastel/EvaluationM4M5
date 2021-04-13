#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/count_reads-%j.out
#SBATCH --error=LOG/count_reads-%j.err
#SBATCH --cpus-per-task=8

module load samtools

samtools flagstat --threads 8 ALIGNMENT/SRR10390685_aligned_paired_sorted_non_filtered.bam
