#!/bin/bash

old="$(pwd)"
current="$(dirname "$0")"
root=..
cd $current

if [ ! -f $root/genatoms ] ; then
    exec ../make
fi

#for i in {0..8..1}
#do
i=$1
head -n7 $root/cell.master > $i.cell
../genatoms <<EOF >> $i.cell
0
24
EOF

#$root/genatoms >> $1
tail -n19 $root/cell.master | head -n10 >> $i.cell
#done
mv *.cell ../
cd $old

