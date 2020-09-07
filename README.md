# center_of_mass

center_of_mass calculates the center of mass of a given molecular structure. 
It reads a .xyz file and writes out a new file containing an extra particle (labeled XX) that can be used to center the coordinates at origin.

center_of_mass is a free software written in Fortran 2003 language, being available at https://github.com/colombarifm/center_of_mass under the GPLv3+ License. 
It runs under Linux environment with gfortran/gcc 5.4+ compilers.

# usage

`center_of_mass --input [FILEIN] --output [FILEOUT] --center [TRUE/FALSE]`

* `[FILEIN]`     : initial .xyz coordinate file.
* `[FILEOUT]`    : final .xyz coordinate file.
* `[TRUE/FALSE]` : place the COM at (0,0,0) ?
