#!/bin/bash
#PBS -N dendogram
#PBS -o dendogram_log.txt -e dendogram_err.txt
#PBS -l walltime=1:00:00
#PBS -l nodes=1:ppn=8
source activate metagenomics-tutorial
cd /home/hpc/cychen/user/<username>/week4/metagenomics-tutorial


mkdir tmp_fastas
cp genomes/*.fasta tmp_fastas
cp P7741.reordered.fasta tmp_fastas/
mkdir dendogram
dRep compare dendogram -g tmp_fastas/*.fasta
rm -fr tmp_fastas

echo "dendogram generated"
echo "output: ./dendogram"
