#!/bin/bash

# Carga el módulo de Singularity
module load singularity

echo "Ejecuta el comando hostname en ibsen"
hostname

echo "Ejecuta el comando hostname en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif hostname

echo "Ejecuta el comando cat /etc/os-release en ibsen"
cat /etc/os-release

echo "Ejecuta el comando cat /etc/os-release en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif cat /etc/os-release

echo "Ejecuta el comando pwd en ibsen"
pwd

echo "Ejecuta el comando pwd en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif pwd

echo "Ejecuta el comando ls -l /home en ibsen"
ls -l /home

echo "Ejecuta el comando ls -l /home en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif ls -l /home

echo "Ejecuta el comando python --version en ibsen"
python --version

echo "Ejecuta el comando python --version en el contenedor my-python.sif de Singularity"
singularity exec my-python.sif python --version

echo "Ejecuta el notebook pi.ipynb con un tamaño de 10**5 que tienes en el subdirectorio source usando la imagen de Singularity" 
singularity exec my-python.sif ipython ../source/pi-solution-alumno25.ipynb 100000
echo "Ejecuta el notebook pi.ipynb que tienes en el propio contenedor my-python.sif de Singularity (que está en /app)"
singularity exec my-python.sif ipython /app/pi-solution-alumno25.ipynb 100000
