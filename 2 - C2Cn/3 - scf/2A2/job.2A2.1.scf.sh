#!/bin/bash
# 08:52:24 
# 26.91 GB

#SBATCH --time=0-12:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <C2Cn.in> C2Cn.out
