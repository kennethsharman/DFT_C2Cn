#!/bin/bash
# 00:57:34 
# 14.00 GB

#SBATCH --time=0-05:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=25G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <C2Cn.in> C2Cn.out
