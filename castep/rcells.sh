#!/bin/bash

for file in 1.cell
do
seed=${file::-5}
#echo $seed
qsub run_castep $seed
#qsub run_castep 27_1
qstat -f
tail -f $seed.castep &
done
