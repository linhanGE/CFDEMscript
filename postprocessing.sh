#!/bin/bash
# 
# Script to run CFDEM on Linux Grid (v1)
#
########################################################
#PBS -l select=1:ncpus=16:mem=8gb

# Edit your Walltime hours
#PBS -l walltime=50:00:00
#PBS -k oe

#PBS -M c3216945@uon.edu.au
#PBS -m bae

# Edit where my simulation is and the name of the file
SIMDIR="/home/c3216945/liquidJet"

# openmpi env vars
export PATH=$PATH:/home/c3216945/openmpi/bin

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/c3216945/openmpi/lib/

# OpenFOAM env vars
source /home/c3216945/OpenFOAM/OpenFOAM-3.0.1/etc/bashrc

cd $SIMDIR

bash parReconstructPar.sh -n 16

exit 0
