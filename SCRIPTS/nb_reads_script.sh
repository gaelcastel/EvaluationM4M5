#!/bin/bash

#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --output=OUTPUT/nb_reads-%j.out
#SBATCH --error=LOG/nb_reads-%j.err

module load seqkit
srun seqkit stats --threads 8 FASTQ/*.fastq.gz > nb_reads_res
