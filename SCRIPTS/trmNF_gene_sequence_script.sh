#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/trmNF_gene_sequence-%j.out
#SBATCH --error=LOG/trmNF_gene_sequence-%j.err

module load bedtools

srun bedtools getfasta -fi ref_genome.fna -bed trmNF_gene_annotation.gff3 > trmNF_gene_sequence.fasta
