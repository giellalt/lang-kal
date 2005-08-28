# This is a makefile that builds the Greenlandic morphological parser
# *****************************************************************

# Her bygger vi en analysator for vestgrønlandsk.

# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon kal.save

ikal.fst: ../bin/ikal.fst
../bin/ikal.fst: ../bin/kal.fst
	@echo
	@echo "*** Building the inverse ikal.fst ***"
	@echo
	@printf "load ../bin/kal.save \n\
	invert net \n\
	save stack ../bin/ikal.fst \n\
	quit \n" > ../tmp/ikal-fst-script
	@xfst -utf8 < ../tmp/ikal-fst-script
	@rm -f ../tmp/ikal-fst-script


# This goal is to build the final analyser. It depends on all the files.

kal.fst: ../bin/kal.fst
../bin/kal.fst: ../bin/kal.save ../bin/caseconv.fst
	@echo
	@echo "*** Building kal.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/kal.save\"] .o. \
	[@\"../bin/caseconv.fst\"]] ; \n\
	save stack ../bin/kal.fst \n\
	quit \n" > ../tmp/kal-fst-script
	@xfst -utf8 < ../tmp/kal-fst-script
	@rm -f ../tmp/kal-fst-script


# The second goal is to build the caseconv.fst file
# This goal depends on case.regex

caseconv.fst: ../bin/caseconv.fst
../bin/caseconv.fst: case.regex
	@echo
	@echo "*** Building caseconv.fst ***" ;
	@echo
	@printf "read regex < case.regex \n\
	save stack ../bin/caseconv.fst \n\
	quit \n" > ../tmp/caseconv-script
	@xfst -utf8 < ../tmp/caseconv-script
	@rm -f ../tmp/caseconv-script



kal.save: ../bin/kal.save
../bin/kal.save: ../bin/xfst-kal.bin ../bin/kal-lex.save
	@echo
	@echo "*** Building the parser kal.save ***"
	@echo
	@printf "read regex [[@\"../bin/kal-lex.save\"] .o. \
	[@\"../bin/xfst-kal.bin\"]] ; \n\
	save stack ../bin/kal.save \n\
	quit \n" > ../tmp/kal-save-script
	@xfst -utf8 < ../tmp/kal-save-script
	@rm -f ../tmp/kal-save-script

# The first goal is to build kal-lex.save
# This goal depends on a bunch of lexicon files

kal-lex.save: ../bin/kal-lex.save
../bin/kal-lex.save: kal-lex.txt noun-kal-lex.txt prt-kal-lex.txt \
	verb-kal-lex.txt
	@echo
	@echo "*** Building kal-lex.save ***" ;
	@echo
	printf "compile-source kal-lex.txt noun-kal-lex.txt \
	prt-kal-lex.txt verb-kal-lex.txt \n\
	save-source ../bin/kal-lex.save \n\
	quit \n" > ../tmp/kal-lex-save-script
	@lexc -utf8 < ../tmp/kal-lex-save-script
	rm -f ../tmp/kal-lex-save-script

# The second goal is to build xfst-kal.bin
# This goal depends on xfst-kal.txt

xfst-kal.bin: ../bin/xfst-kal.bin
../bin/xfst-kal.bin: xfst-kal.txt
	@echo
	@echo "*** Building xfst-kal.bin ***" ;
	@echo
	@printf "source xfst-kal.txt \n\
	save stack ../bin/xfst-kal.bin \n\
	quit \n" > ../tmp/xfst-kal-script
	@xfst -utf8 < ../tmp/xfst-kal-script
	@rm -f ../tmp/xfst-kal-script

clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


