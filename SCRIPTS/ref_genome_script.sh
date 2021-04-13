#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/ref_genome-%j.out
#SBATCH --error=LOG/ref_genome-%j.err

srun wget https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/009/045/GCF_000009045.1_ASM904v1/GCF_000009045.1_ASM904v1_genomic.fna.gz -O REF_GENOME/ref_genome.fna.gz
