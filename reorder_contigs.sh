#!/bin/bash


#reference genome
ref=genomes/Liflandii.fasta

ragtag.py scaffold $ref P7741_SPADES_OUT/contigs.fasta -o P7741_reordered


#extract the reordered contig with a custom python script
#the scripts accept name of the ragtag file containing the reordered contigs and accession number for the reference genome
#accession number is found in the first line of the reference genome fasta file

python extract_reordered.py P7741_reordered/ragtag.scaffold.fasta NC_020133.1

