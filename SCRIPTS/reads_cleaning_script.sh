#!/bin/bash

#SBATCH --mem=40G
#SBATCH --output=OUTPUT/cleaning-%j.out
#SBATCH --error=LOG/cleaning-%j.err
#SBATCH --cpus-per-task=8

module load fastp

srun  fastp --in1 FASTQ/SRR10390685_1.fastq.gz --in2 FASTQ/SRR10390685_2.fastq.gz --out1 CLEANING/SRR10390685_1.cleaned_filtered.fastq.gz --out2 CLEANING/SRR10390685_2.cleaned_filtered.fastq.gz --html CLEANING/fastp.html --thread 8 --cut_mean_quality 28 --cut_window_size 8 --length_required 36 --cut_tail --json CLEANING/fastp.json
