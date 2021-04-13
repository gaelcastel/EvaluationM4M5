#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/ref_genome_annotation-%j.out
#SBATCH --error=LOG/ref_genome_annotation-%j.err

module load samtools

srun samtools faidx REF_GENOME/ref_genome.fna
