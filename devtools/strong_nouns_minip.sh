#!/bin/bash

# script to generate specific infelctionparadigms for testing


HLOOKUP="hfst-lookup -q"
GTLANGS=$(echo $GTLANGS)

Z2ZMORF="erneq"		# lemma1
Z2_QZMORF="atileq"	# lemma2
Z2_ZMORF="aarluk"	# lemma3
Z2KZMORF="tarnik"	# lemma4
ZVEQZ="aaveq"		# lemma5
Z2AQZ="anorersuaq"	# lemma6
Z2TUPEQZ="tupeq"	# lemma7
Z2I2Z="nateq"		# lemma8
Z2_RZ="seqineq"		# lemma9
Z2_LZ="ipulik"		# lemma10

TUP_FILE="src/fst/morphology/test/test-tup-inflections.txt"				# form1 (tup_inflections)
TUPTR_FILE="src/fst/morphology/test/test-tup-tr-inflections.txt"		# form2 (tup_tr_inflections)
TUPK_FILE="src/fst/morphology/test/test-tup-k-inflections.txt"			# form3 (tup_k_infl)
ZVEQZ_FILE="src/fst/morphology/test/test-Z2veqZ-inflections.txt"		# form4 (Z2veqZ_inflections)
Z2AQZ_FILE="src/fst/morphology/test/test-Z2aqZ-inflections.txt"			# form5 (Z2aqZ_inflections)
Z2TUPEQZ_FILE="src/fst/morphology/test/test-Z2tupeqZ-inflections.txt"	# form6 (Z2tupeqZ_inflections)
Z2I2Z_FILE="src/fst/morphology/test/test-Z2i2Z-inflections.txt"			# form7 (Z2i2Z_inflections)
Z2_RZ_FILE="src/fst/morphology/test/test-Z2_rZ-inflections.txt"			# form8 (Z2_rZ_inflections)
Z2_LZ_FILE="src/fst/morphology/test/test-Z2_lZ-inflections.txt"			# form9 (Z2_lZ_infl)

for lemma1 in $(echo $Z2ZMORF);
do
 for form1 in $(cat $TUP_FILE);
 do
  echo "${lemma1}${form1}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol # desc for at teste alt er med
done
for lemma2 in $(echo $Z2_QZMORF);
do
 for form2 in $(cat $TUPTR_FILE);
 do
  echo "${lemma2}${form2}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
for lemma3 in $(echo $Z2_ZMORF);
do
 for form2 in $(cat $TUPTR_FILE);
 do
  echo "${lemma3}${form2}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
for lemma4 in $(echo $Z2KZMORF);
do
 for form3 in $(cat $TUPK_FILE);
 do
  echo "${lemma4}${form3}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
for lemma5 in $(echo $ZVEQZ);
do
 for form4 in $(cat $ZVEQZ_FILE);
 do
  echo "${lemma5}${form4}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
 for lemma6 in $(echo $Z2AQZ);
do
 for form5 in $(cat $Z2AQZ_FILE);
 do
  echo "${lemma6}${form5}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
 for lemma7 in $(echo $Z2TUPEQZ);
do
 for form6 in $(cat $Z2TUPEQZ_FILE);
 do
  echo "${lemma7}${form6}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
 for lemma8 in $(echo $Z2I2Z);
do
 for form7 in $(cat $Z2I2Z_FILE);
 do
  echo "${lemma8}${form7}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
 for lemma9 in $(echo $Z2_RZ);
do
 for form8 in $(cat $Z2_RZ_FILE);
 do
  echo "${lemma9}${form8}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
 for lemma10 in $(echo $Z2_LZ);
do
 for form9 in $(cat $Z2_LZ_FILE);
 do
  echo "${lemma10}${form9}" | $HLOOKUP $GTLANGS/kal/src/fst/generator-gt-desc.hfstol
 done
done
done
done
done
done
done
done
done
done
done
