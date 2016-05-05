Group 6 Project
===============

This program calculates the energy of different configurations of a lattice
made up of a 3x3x3 unit cell of MgO and CaO. Each unit cell has a layer of
pure MgO and one of pure CaO. The interface between them changes over the
simulation. The Oxygen sublattice is assumed to be constant. The energy of
formation of the lattices are then plotted.

DEPENDENCIES (tested with version)
----------------------------------

- gfortran (4.8.4, 5.3.0)
    https://gcc.gnu.org/fortran/

- GNU Make (3.81, 4.1)
    https://www.gnu.org/software/make/

- python 2.7, numpy, matplotlib
    https://www.python.org/
    http://www.numpy.org/
    http://matplotlib.org/

- BASH (4.3.11)
    https://www.gnu.org/software/bash/

- Java (1.8.0_91)
    https://www.oracle.com/uk/java/index.html

INSTALLATION AND RUNNING
------------------------

Assuming gfortran and GNU Make are in your $PATH,
inside the top level directory, run

`$ make`

or alternatively compile manually with the equivalent of

`$ gfortran src/intertype.f90 src/genatoms.f90 -o genatoms`

where the output executable must be called "genatoms" and be located
inside the top level directory.

To run the program, run

`$ src/master.sh`

To view each unit cell, run

`$ src/jmol -I path/to/cell.cell`

where path/to/cell.cell has to be the relative path from the src directory, e.g.

`$ src/jmol -I ../cell/27_0.cell`