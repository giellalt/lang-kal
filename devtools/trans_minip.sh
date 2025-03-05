#!/bin/bash

# script to generate paradigms for generating word forms
# command, when you are in smj:
# sh devtools/trans_minip.sh HTR_r_GAQ_i | less
# sh devtools/trans_minip.sh usiler 


LOOKUP=$(echo $LOOKUP)
HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)



PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/morphology/stems/verbs.lexc | egrep $PATTERN | tr '[+ ]' ':'| cut -d ':' -f1>$L_FILE

P_FILE="test/data/testtransparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | hfst-lookup -q src/generator-gt-norm.hfstol
 done
 rm -f $L_FILE
done