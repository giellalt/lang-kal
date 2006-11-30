# ************************************************************************ #
# This is a makefile that builds the XFST Greenlandic morphological parser #
# ************************************************************************ #


# Her bygger vi en analysator for vestgrønlandsk.

# Tools used when compiling the transducers

XFST = xfst -utf8
LEXC = lexc -utf8

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
endif

#ifeq (per.marttila.fi, $(shell hostname))
#XFST = /.../fst -utf8 #bare fst viss i sti.
#LEXC = /../lexc -utf8
#endif


# Kildefiler


SRCS = kal-lex.txt \
	abbr-kal-lex.txt acro-kal-lex.txt \
	noun-kal-lex.txt verb-kal-lex.txt \
	ateq-kal-lex.txt ateq-kal-morph.txt \
	punct-kal-lex.txt prt-kal-lex.txt num-kal-lex.txt 

ifeq ($(TARGET), strict)
LEX = $(patsubst %,../int/str-%,$(SRCS))

endif


ifeq ($(TARGET), sloppy)
LEX = $(SRCS)

endif


# We have two targets, default and strict
# The latter is restrictive.

all: $(TARGET)

strict: ikal.fst
sloppy: ikal.fst 


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon kal.save

ikal.fst: ../bin/ikal.fst
../bin/ikal.fst: ../bin/kal.fst ../bin/g-kal.fst ../bin/d-kal.fst ../bin/abbr.txt #../bin/str-kal.fst
	@echo
	@echo "*** Building the inverse ikal.fst ***"
	@echo
	@printf "load ../bin/kal.save \n\
	invert net \n\
	save stack ../bin/ikal.fst \n\
	quit \n" > ../tmp/ikal-fst-script
	$(XFST) < ../tmp/ikal-fst-script
	@rm -f ../tmp/ikal-fst-script





# Versions of the sloppy tagger with different tags:
# **************************************************

# We want an analyzer with Danish tags. It takes the linguistic 
# kal.fst as input and gives us an alternate d-kal.fst

d-kal.fst: ../bin/d-kal.fst
../bin/d-kal.fst: ../bin/kal.fst ../bin/tag-da.fst
	@echo
	@echo "*** Building d-kal.fst, kal.fst with Danish tags ***"
	@echo
	@printf "read regex [[@\"../bin/tag-da.fst\"] .o. \
	[@\"../bin/kal.fst\"]] ; \n\
	save stack ../bin/d-kal.fst \n\
	quit \n" > ../tmp/d-kal-fst-script
	@fst < ../tmp/d-kal-fst-script
	@rm -f ../tmp/d-kal-fst-script


# In order to make d-kal.fst we need a binary tag-da.fst
# This goal depends on tag-da.regex

tag-da.fst: ../bin/tag-da.fst
../bin/tag-da.fst: tag-da.regex
	@echo
	@echo "*** Building tag-da.fst ***" ;
	@echo
	@printf "read regex < tag-da.regex \n\
	save stack ../bin/tag-da.fst \n\
	quit \n" > ../tmp/kal-tag-da-script
	@fst < ../tmp/kal-tag-da-script
	@rm -f ../tmp/kal-tag-da-script

# We also want an analyzer with Greenlandic tags. It takes the linguistic 
# kal.fst as input and gives us an alternate g-kal.fst

g-kal.fst: ../bin/g-kal.fst
../bin/g-kal.fst: ../bin/kal.fst ../bin/tag-kal.fst
	@echo
	@echo "*** Building g-kal.fst, kal.fst with Greenlandic tags ***"
	@echo
	@printf "read regex [[@\"../bin/tag-kal.fst\"] .o. \
	[@\"../bin/kal.fst\"]] ; \n\
	save stack ../bin/g-kal.fst \n\
	quit \n" > ../tmp/g-kal-fst-script
	@fst < ../tmp/g-kal-fst-script
	@rm -f ../tmp/g-kal-fst-script
 

# In order to make g-kal.fst we need a binary tag-kal.fst
# This goal depends on tag-kal.regex

tag-kal.fst: ../bin/tag-kal.fst
../bin/tag-kal.fst: tag-kal.regex
	@echo
	@echo "*** Building tag-kal.fst ***" ;
	@echo
	@printf "read regex < tag-kal.regex \n\
	save stack ../bin/tag-kal.fst \n\
	quit \n" > ../tmp/tag-kal-script
	@fst < ../tmp/tag-kal-script
	@rm -f ../tmp/tag-kal-script




# Here comes the part building the basic parser.
# **********************************************

# Trying...
#strict: ../bin/kal.fst


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
	$(XFST) < ../tmp/kal-fst-script
	@rm -f ../tmp/kal-fst-script



# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the script catalogue)

abbr: ../bin/abbr.txt
../bin/abbr.txt: ../../../gt/script/abbr-extract abbr-kal-lex.txt \
	ateq-kal-lex.txt noun-kal-lex.txt prt-kal-lex.txt
	@echo
	@echo "*** Extracting abbreviations from abbr-kal-lex.txt to abbr.txt ***" ;
	@echo
	@perl ../../../gt/script/abbr-extract \
		--abbr_lex=abbr-kal-lex.txt \
		--lex=ateq-kal-lex.txt,noun-kal-lex.txt,prt-kal-lex.txt \
		--output=$@



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
	$(XFST) < ../tmp/caseconv-script
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
	$(XFST) < ../tmp/kal-save-script
	@rm -f ../tmp/kal-save-script


# The first goal is to build kal-lex.save
# This goal depends on a bunch of lexicon files

kal-lex.save: ../bin/kal-lex.save
../bin/kal-lex.save: $(LEX)
	@echo
	@echo "*** Building kal-lex.save ***" ;
	@echo
	printf "compile-source $(LEX) \n\
	save-source ../bin/kal-lex.save \n\
	quit \n" > ../tmp/kal-lex-save-script
	$(LEXC) < ../tmp/kal-lex-save-script
	@rm -f ../tmp/kal-lex-save-script


ifeq ($(TARGET), strict)
$(LEX): $(SRCS)
	@echo
	@echo "*** Making restrictive lexicon files ***"
	@echo  
	@grep -v 'SUB' $(patsubst ../int/str-%,%,$@) > $@
endif

ifeq ($(TARGET), sloppy)
$(LEX): $(SRCS)
endif


# Here we build xfst-kal.bin, the morphophonological component.
# This goal depends on xfst-kal.txt

xfst-kal.bin: ../bin/xfst-kal.bin
../bin/xfst-kal.bin: xfst-kal.txt
	@echo
	@echo "*** Building xfst-kal.bin ***" ;
	@echo
	@printf "source xfst-kal.txt \n\
	save stack ../bin/xfst-kal.bin \n\
	quit \n" > ../tmp/xfst-kal-script
	$(XFST) < ../tmp/xfst-kal-script
	@rm -f ../tmp/xfst-kal-script




clean:
	@rm -f ../bin/*.bin ../bin/*.fst ../bin/*.save


