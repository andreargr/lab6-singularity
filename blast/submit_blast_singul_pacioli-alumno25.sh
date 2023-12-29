#!/bin/bash
#
#SBATCH -p hpc-bio-pacioli  
#SBATCH --chdir=/home/alumno25/lab6 
#SBATCH -J Par-example 
#SBATCH --mail-type=NONE #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

#Cargamos el modulo Singularity
module load singularity

#Se descomprime la base de datos
gunzip blast/zebrafish.1.protein.faa.gz

#Preparación de la base de datos
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

#Alineación con blastp
singularity exec /nas/hdd-0/singularity_images/blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results-blast.txt
