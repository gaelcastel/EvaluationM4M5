#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/multiqc-%j.out
#SBATCH --error=LOG/multiqc-%j.err

module load multiqc
srun multiqc -d . -o QC""
