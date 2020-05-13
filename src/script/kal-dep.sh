#! /bin/bash

# sme-snt.sh
# This is a shell script for analysing Greenlandic sentences.
# It gives the analysis, and the number of the rules used to disambiguate

while [ 1 ]                                 # as long as there is input
do                                          # run the following loop
echo -n "Skriv sætning: "                   # (message to user)
read sentence                               # next 3 lines is the usual command
echo $sentence | preprocess --abbr=$HOME/gtsvn/st/kal/bin/abbr.txt | \
lookup -flags mbTT -utf8 $HOME/gtsvn/st/kal/bin/kal.fst | $HOME/gtsvn/gt/script/lookup2cg | \
vislcg3 -g $HOME/gtsvn/st/kal/src/kal-dis3.rle | \
vislcg3 --grammar $HOME/gtsvn/gt/sme/src/sme-dep.rle -C UTF-8


done                      
exit 0
