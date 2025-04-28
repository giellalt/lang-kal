#!/bin/bash

# script to generate paradigms for generating word forms
# command:
# sh generate_contlex_para.sh PATTERN
# example, when you are in kal:
# sh devtools/noun_minip.sh LAAVU | less
# sh devtools/noun_minip.sh smiergâs 
# Only get the lemma you ask for:
# sh devtools/noun_minip.sh '^smiergâs[:+]' 


LOOKUP=$(echo $LOOKUP)
HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 ../src/fst/morphology/stems/nouns.lexc | egrep $PATTERN | tr '[+ ]' ':'| cut -d ':' -f1>$L_FILE

P_FILE="../src/fst/morphology/test/testnounparadigm.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
#   echo "${lemma}${form}" | $LOOKUP $GTLANGS/kal/src/fst/generator-gt-norm.xfst    # for xfst
  echo "${lemma}${form}" | hfst-lookup -q $GTLANGS/kal/src/fst/generator-gt-norm.hfstol # for hfst
 done
 rm -f $L_FILE
done

