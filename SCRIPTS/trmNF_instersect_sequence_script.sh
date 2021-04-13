#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/reads_intersect_trmNF-%j.out
#SBATCH --error=LOG/reads_intersect_trmNF-%j.err

module load bedtools
module load samtools

srun bedtools intersect -a ALIGNMENT/SRR10390685_aligned_paired_sorted_non_filtered.bam -b RESULTS/trmNF_gene_annotation.gff3  -sorted -g REF_GENOME/my_genome -f 0.50  > ALIGNMENT/reads_intersect_trmNF.bam

srun samtools view -h -o ALIGNMENT/reads_intersect_trmNF.sam ALIGNMENT/reads_intersect_trmNF.bam
