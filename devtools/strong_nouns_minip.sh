#!/bin/bash

# script to generate specific infelctionparadigms for testing


HLOOKUP="hfst-lookup -q"
GTLANGS=$(echo $GTLANGS)

PATTERNZ2ZMORF="erneq"
PATTERNZ2_QZMORF="atileq"
PATTERNZ2_ZMORF="aarluk"

TUP_FILE="src/fst/morphology/test/test-tup-inflections.txt"				# tup_inflections
TUPTR_FILE="src/fst/morphology/test/test-tup-tr-inflections.txt"		# tup_tr_inflections

for lemma1 in $(echo $PATTERNZ2ZMORF);
do
 for form1 in $(cat $TUP_FILE);
 do
  echo "${lemma1}${form1}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol # desc for at teste alt er med
done
for lemma2 in $(echo $PATTERNZ2_QZMORF);
do
 for form2 in $(cat $TUPTR_FILE);
 do
  echo "${lemma2}${form2}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
for lemma3 in $(echo $PATTERNZ2_ZMORF);
do
 for form2 in $(cat $TUPTR_FILE);
 do
  echo "${lemma3}${form2}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
done
done
done
