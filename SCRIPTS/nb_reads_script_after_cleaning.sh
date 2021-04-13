#!/bin/bash

#SBATCH --cpus-per-task=8
#SBATCH --mem=40G
#SBATCH --output=OUTPUT/nb_reads_after_cleaning-%j.out
#SBATCH --error=LOG/nb_reads_after_cleaning-%j.err

module load seqkit
srun seqkit stats --threads 8 CLEANING/*.fastq.gz > CLEANING/nb_reads_after_cleaning_res
