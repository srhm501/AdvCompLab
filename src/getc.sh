#!/bin/bash

# call as "./getcoords.sh file.cell"
for file in ../*.cell
do
name=${file::-5}
grep "^     O" $file | awk '{$1="O";sub("O","");print}' > ../dat/O.dat
grep "^    Mg" $file | awk '{$1="Mg";sub("Mg","");print}' > ../dat/Mg.dat
grep "^    Ca" $file | awk '{$1="Ca";sub("Ca","");print}' > ../dat/Ca.dat
done

gnuplot << EOF
set xlabel "X"
set ylabel "Y"
set zlabel "Z"
set grid
set title ""
set term png
set output "../dat/pos.png"
splot 	"../dat/Mg.dat" pt 7 ps 5, \
	"../dat/O.dat" pt 7 ps 5, \
      	"../dat/Ca.dat" pt 7 ps 5
set term wxt
replot
EOF
display "pos.png"
