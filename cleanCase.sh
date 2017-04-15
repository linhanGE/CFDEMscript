#!/bin/bash

#===================================================================#
# allrun script for testcase as part of test routine 
# run settlingTest CFD part
# Christoph Goniva - Feb. 2011
#===================================================================#

#- source CFDEM env vars
. ~/.bashrc

#- include functions
source $CFDEM_SRC_DIR/lagrangian/cfdemParticle/etc/functions.sh

#- include functions
casePath="$(dirname "$(readlink -f ${BASH_SOURCE[0]})")"

keepDEMrestart="false"
cleanCFDEMcase $casePath/CFD $keepDEMrestart

cp -r $casePath/CFD/polyMesh $casePath/CFD/constant