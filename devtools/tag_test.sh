#shell script to see if there are tags which are not declared in root.lexc or if tags are misspelled
    
echo 'Are there tags not declared in root.lexc or misspelled?'
cat  src/fst/morphology/affixes/*lexc src/fst/morphology/stems/*lexc  ../shared-mul/src/fst/stems/*lexc | sed 's/< "\(.*\)" >/\1: ;\n/g' | sed 's/" "/: ;\n/g' |cut -d '!' -f1 |grep ' ;' | cut -d ':' -f1 |rev |cut -d ' ' -f1 |rev |sed 's/^ //' | cut -d ' ' -f1 | sed 's/AA+\([anna|av|ik|inna|innga|kan|kanna|kig|kinnga|ma|manna|panna|pav|pik|pinnga|qam|qanna|qav|sam|sanna|una]\)/\1/g' | sed 's/TA+\([anna|av|ik|inna|innga|kan|kanna|kig|kinnga|ma|manna|panna|pav|pik|pinnga|qam|qanna|qav|sam|sanna|una]\)/\1/g' |sed 's/+/¢+/g'|sed 's/@\(.*\)@/\n@\1@\n/g'| sed 's/@@/@\n@/g' | tr '¢' '\n' | tr '#"' '\n' | egrep '(\+|@)' |sort -u | egrep -v '^(\+|\+%|\+\/\-|\+Cmp\-|\+Cmp%\-|\@0|\@%)$' > lexctags

cat src/fst/morphology/root.lexc | sed 's/AA+//g' | sed 's/TA+//g' |cut -d '!' -f1 |cut -d ':' -f1 |sed 's/+/¢+/g'|sed 's/@\(.*\)@/¢@\1@/g' |tr '¢' '\n' | egrep '(\+|@)' |tr -d ' ' | tr -d '\t'|sort -u > roottags

echo '\nUsed in *.lexc files, but not declared in root.lexc:'

comm -23 lexctags roottags 

echo '\nDeclared in root.lexc, but not used in *.lexc files:'
comm -23 roottags lexctags

echo '\nChecking for double semicolon in stem files:'
cat src/fst/morphology/stems/*lexc |cut -d '!' -f1 |grep ';.*;'|egrep -v '(SCND|THRD|FRTH|FFTH|ACRO|anl)'

echo '\nChecking for mismatches in Der-tags .v-n.'
git ls-files -- "*.lexc" | xargs -n1 git blame -f | grep -P '\+[A-Z]+\+Der/.v(\+Gram/.V)?\+[A-Z]+\+Der/n.'

echo '\nChecking for mismatches in Der-tags .n-v.'
git ls-files -- "*.lexc" | xargs -n1 git blame -f | grep -P '\+[A-Z]+\+Der/.n\+[A-Z]+\+Der/v.'

echo '\nChecking for plus sign duplicates'
git ls-files -- "*.lexc" | xargs -n1 git blame -f | grep -P '\+\+[A-Z]'

echo '\nChecking for use of equals sign instead of plus sign'
git ls-files -- "*.lexc" | xargs -n1 git blame -f | grep -P '[a-z]+=[A-Z]+\+Der'

#echo 'Checking for missing Der-tags:'
#cat src/fst/stems/*lexc |cut -d '!' -f1 |grep '\+Der/.*;' |egrep -v 'Der([1234]|\+)'

#echo 'Checking for double Sem-tags:'
#cat src/fst/stems/*lexc |cut -d '!' -f1 |grep '+Sem.*+Sem' 

echo '\nchecked'
rm lexctags roottags
