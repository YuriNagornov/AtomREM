module bistable1d_val
  implicit none

  integer, save :: &
  & Nstep,         & ! number of steps
  & Nwalker,       & ! number of walkers
  & Natoms,        & ! number of atoms 
  & Nregions,        & ! number of lammps calculations done at one time
  & Ncycles,        & ! number of lammps calculations
  & steptowrite      ! number of steps in order to write the path and other data


  real(8), save :: &
  & temp,          & ! temperature [Kelvin]
  & factor,        & ! heating factor T_eff = temp*factor
  & x_ini(2),         & ! initial x1 and x2 positions for mode=initial
  & y_ini(2),         & ! initial y1 and y2 positions for mode=initial
  & z_ini(2),         & ! initial z1 and z2 positions for mode=initial
  & dt,               & ! timestep
  & ratio,            & ! delta parameter in equation
  & ratio_ctrl          ! delta parameter in equation !! AKASHI

  character(256), save :: &
  & mode,          &  ! initial mode 
  & &                 ! 'initial':delta function
  & &                 ! 'load'   :read from file
  & fin,           &  ! walker input filename
  & fout              ! walker output filename

  logical, save :: &
  & Vswitch , Dist_switch, Debag          ! on or off V, saving of distribution and debagging info

  integer, allocatable, save :: &
  & itype(:)          ! index of atom types

  real(8), allocatable, save :: &
  & x_pos(:,:), &
  & y_pos(:,:), &
  & z_pos(:,:)

  real(8), save :: &
  & a_orig(3)         ! origin position

  real(8), save :: &
  & a_vec(3,3),    &  ! lattice vector
  & b_vec(3,3)        ! reciprocal lattice vector (a_i*b_j=\delta_ij)

  character(1), save :: &
  & bounds(3)         ! finite(f), periodic(p)
end module bistable1d_val
