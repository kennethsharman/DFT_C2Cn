#!/bin/bash
# 07:36:01 
# 34.37 GB
# for 0.8E-2 it took 17:34:06 but accuracy < 0.00679232

#SBATCH --time=1-00:00
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=32
#SBATCH --mem=45G

#SBATCH --mail-user=kenneth.sharman@ucalgary.ca
#SBATCH --mail-type=ALL

module load nixpkgs/16.09
module load intel/2019.3
module load openmpi/4.0.1
module load quantumespresso/6.4.1
srun pw.x <C2Cn.in> C2Cn.out
