#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/compress_fastq-%j.out
#SBATCH --error=LOG/compress_fastq-%j.err

srun gzip FASTQ/*.fastq
