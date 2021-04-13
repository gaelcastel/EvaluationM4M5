#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/qc-%j.out
#SBATCH --error=LOG/qc-%j.err
#SBATCH --cpus-per-task=8

module load fastqc

srun fastqc FASTQ/SRR10390685_1.fastq.gz -o QC/ -t 8
srun fastqc FASTQ/SRR10390685_2.fastq.gz -o QC/ -t 8

