#shell script to see if there are tags which are not declared in root.lexc or if tags are misspelled

echo 'Are there tags not declared in root.lexc or misspelled?'
cat  src/fst/morphology/affixes/*lexc src/fst/morphology/stems/*lexc  ../shared-mul/src/fst/stems/*lexc |cut -d '!' -f1 |grep ' ;' | cut -d ':' -f1 |rev |cut -d ' ' -f1 |rev |sed 's/^ //' | cut -d ' ' -f1 |sed 's/+/¢+/g' |sed 's/@/¢@/g'|tr '¢' '\n' | tr '#"' '\n'| egrep '(\+|@)' |sort -u | egrep -v '^(\+|\+%|\+\/\-|\+Cmp\-|\+Cmp%\-|\@0|\@%)$' > lexctags

cat src/fst/morphology/root.lexc |cut -d '!' -f1 |cut -d ':' -f1 |sed 's/+/¢+/g'|sed 's/@/¢@/g' |tr '¢' '\n' | egrep '(\+|@)' |tr -d ' ' | tr -d '\t'|sort -u > roottags

echo '\nHave a look at these:'

comm -23 lexctags roottags 

echo '\nChecking for double semicolon in stem files:'
cat src/fst/morphology/stems/*lexc |cut -d '!' -f1 |grep ';.*;'|egrep -v '(SCND|THRD|FRTH|FFTH|ACRO|anl)'

echo '\nChecking for mismatches in Der-tags .v-n.'
git ls-files -- "*.lexc" | xargs -n1 git blame | grep -P '\+[A-Z]+\+Der/.v\+[A-Z]+\+Der/n.'

echo '\nChecking for mismatches in Der-tags .n-v.'
git ls-files -- "*.lexc" | xargs -n1 git blame | grep -P '\+[A-Z]+\+Der/.n\+[A-Z]+\+Der/v.'

echo '\nChecking for plus sign duplicates'
git ls-files -- "*.lexc" | xargs -n1 git blame | grep -P '\+\+([A-Z]+|Der)'

#echo 'Checking for missing Der-tags:'
#cat src/fst/stems/*lexc |cut -d '!' -f1 |grep '\+Der/.*;' |egrep -v 'Der([1234]|\+)'

#echo 'Checking for double Sem-tags:'
#cat src/fst/stems/*lexc |cut -d '!' -f1 |grep '+Sem.*+Sem' 

echo '\nchecked'
rm lexctags roottags
