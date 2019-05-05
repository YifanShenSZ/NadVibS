# NadVibS
Nonadiabatic vibrational spectrum simulation package

Originate from NADVIBS.X by Michael Schuurman 2007

NadVibS requires 2 input files: nadvibs.in & basis.in, an example is provided. nadvibs.in will be automatically generated by SurfGenBound (and is well documented). However, user have to take care of the FORTRAN namelist file basis.in:
* restart   = 0, new job; else, restart
* nstates   = number of electronic states
* ordr      = order of the expansion for diabatic hamiltonian
* natoms    = number of atoms in molecule
* nmodes    = number of vibrational modes
* nirreps   = number of irreducible representations in point group symmetry
* npirr     = number of normal modes in each irreducible representation
* basis     = number of basis functions for each vibrational mode
* initstate = the initial vibrational state of the precursor (specified by the quanta of each precursor normal mode)
* shiftref  = 0, do not use new origin; else, use new origin
* niter     = number of lanczos iterations to be performed
* bconv     = (default 1) -lg( convergence tolerence for eigen value )
* idroot    = (default 0) how many of the lead contributors to a vibronic level to identify
* soroot    = number of roots to compute spin orbit parameters
* reorthog  = (default 0) >0, request re-orthogonalization; >1, exact dot products are to be used to monitor lanczos vector orthogonality 
* chkorthog = (default 100) every how many iterations compute exact dot products if using recurrence
* nseg      = (default 1) number of segements to divide lanczos vector into
* ztoler    = (default 1d-20) Any coefficient less ztoler is set to 0
* maxdisk   = (default 1000) maximum amount of disk available for use (in MB)
* weights   = (default 0) initial weights of the electronic states

Reference:
> 1. M. S. Schuurman, R. A. Young, D. R. Yarkony 2007 Chem. Phys.
> 2. M. S. Schuurman, D. Yarkony 2008 J. Chem. Phys.