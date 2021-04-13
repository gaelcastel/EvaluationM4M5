#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/align_to_genome-%j.out
#SBATCH --error=LOG/align_to_genome-%j.err
#SBATCH --cpus-per-task=8

module load bwa

srun bwa mem -t 8 REF_GENOME/ref_genome.fna.gz CLEANING/SRR10390685_1.cleaned_filtered.fastq.gz CLEANING/SRR10390685_2.cleaned_filtered.fastq.gz > ALIGNMENT/SRR10390685_aligned_paired.sam
