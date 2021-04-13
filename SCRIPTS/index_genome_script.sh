#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/index_genome-%j.out
#SBATCH --error=LOG/index_genome-%j.err
  
module load bwa

srun bwa index REF_GENOME/ref_genome.fna.gz
