# AdvCompLab

Please use the teesting branch, you can use push origin master to push to the master branch when the code is 100% working.

for information on how to use the branch.
https://www.digitalocean.com/community/tutorials/how-to-use-git-branches


To run code: Goto src directory

getc.sh goes through all the cell files and saves the coordinates of Oxygen, Magnesium and Calcium into data files in the dat folder. The CELL files are named with the composition of Mg and Ca in, e.g. Mg50Ca50 for 50% of each. 

run.sh calls CASTEP for all files ending in *.cell it then calls cleanup.sh to delete all log files and error files.

cleanup.sh deletes unwanted files from directory

jmol script opens Jmol to view the arrangement of atoms 

Source files moved to src
Data files are written to dat

Castep now
