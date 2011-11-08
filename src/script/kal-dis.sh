#! /bin/bash

# sme-snt.sh
# This is a shell script for analysing Greenlandic sentences.
# It gives the analysis, and the number of the rules used to disambiguate

while [ 1 ]                                 # as long as there is input
do                                          # run the following loop
echo -n "Skriv sætning: "                   # (message to user)
read sentence                               # next 3 lines is the usual command
echo $sentence | preprocess --abbr=$HOME/gtsvn/st/kal/bin/abbr.txt | \
lookup -flags mbTT -utf8 ~/st/kal/bin/kal.fst | ~/gt/script/lookup2cg | \
vislcg3 -g $HOME/st/kal/src/kal-dis3.rle 

done                      
exit 0
