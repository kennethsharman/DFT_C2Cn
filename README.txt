***** Carbon trimer (C2Cn) DFT analysis *****
QUANTUM ESPRESSO calculations performed via Compute Canada (cedar and graham
clusters). VESTA was used to build structures/plot wavefunctions.

*** Overview ***
	1) Optimized hBN (atomic positions, lattice constant, bandgap).
	2) Added carbon timer defect to hBN lattice.
	3) Single-configuration excited states were created using \Delta SCF 
	   method. Each state was allowed to relax.
	4) Spin-polarized, SCF calculations were performed at the Gamma point
	   for each of the ground and excited states.
	5) Ground state wavefunctions were plotted for the defect electrons.
	6) Transition energies were calculated by evaluating the difference in
	   the total energies determined in SCF calcs. 

*** Details ***

	'1 - hBN' : Folder contains the results of my investigation into 
	prisitine hBN.
	- Supercell consists of 7x7 unit cells of monolayer hBN.
	- 20 A vacuum.
	- Started with structure given by:
		https://materialsproject.org/materials/mp-984/.
	- Transformed 1x1 structure to 7x7 using VESTA.
	- QE does not support non-scf calculations when using HSE06 functional.
	- Relaxation calculations performed using PBE functional.
	- Relaxed atomic positions/in-plane lattice constant until reaching a
	  force convergence threshold of 10^-4 eV/A (/1 - relax*/).
 	- Performed scf calculations using HSE functional.
	- Electron band structure was plotted. Direct bandgap at K point, as
	  expected for monolayer hBN.
	- Adjusted screening_parameter for band gap of 5.99 eV (/2 - scf/).

	'2 - C2Cn' : Folder contains results of my investgation into C2Cn.
	- Delta SCF method was used to construct excited states (15 A vacuum).
	- Ground state name (group theory notation): 2A2
	- Excited state names: 	2B2, 2B2p, 4A2, 2A2p1, 2A2p2, 2A2p3.
	- Ground and excited state geometries were allowed to relax until
	  reaching a convergence threshold of 10^-4 eV/A ('/1 - relax/'). 
	- Covergence test was performed on ground state to determine the 
	  cutoff energy for the plane-wave basis set ('/2 - ecut/').
	- Total energy was to determined to be converged for ecut > 25 Ry.
	- 25.73 Ry (350 eV) cutoff was used in subsequent scf calculations.
	- Spin polarized scf calculations were performed within the Gamma-point
	  approximation, for each state ('/3 - scf/'). 
	- Differences in total energies are used to determine transition
	  energies between states.	
	- Ground state wavefunctions were plotted ('/3 - scf/2A2/VESTA').  
