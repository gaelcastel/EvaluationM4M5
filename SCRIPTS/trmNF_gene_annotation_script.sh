#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/trmNF_annotation-%j.out
#SBATCH --error=LOG/trmNF_annotation-%j.err

srun zgrep trmNF REF_GENOME/ref_genome_annotation.gff.gz | awk '$3=="gene"' > RESULTS/trmNF_gene_annotation.gff3
