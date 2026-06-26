#!/bin/bash

# script to generate specific infelctionparadigms for testing


HLOOKUP="hfst-lookup -q"
GTLANGS=$(echo $GTLANGS)

PATTERNTUP="erneq"
PATTERNTUPTR="atileq"

TUP_FILE="src/fst/morphology/test/test-tup-inflections.txt"
TUPTR_FILE="src/fst/morphology/test/test-tup-tr-inflections.txt"

for lemma1 in $(echo $PATTERNTUP);
do
 for form1 in $(cat $TUP_FILE);
 do
  echo "${lemma1}${form1}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol # desc for at teste alt er med
done
for lemma2 in $(echo $PATTERNTUPTR);
do
 for form2 in $(cat $TUPTR_FILE);
 do
  echo "${lemma2}${form2}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
done
done
