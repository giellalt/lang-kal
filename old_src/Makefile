# ************************************************************************ #
# This is a makefile that builds the XFST Greenlandic morphological parser #
# ************************************************************************ #

# Usage notes:
# There must be a sister catalogue bin/ to this directory, and the xerox tools
# fst and lexc must be in the path (for use of xfst, see directly below).
# The parsers compile with the following command (given in this directory):
# make TARGET=strict (or, eventually: make TARGET=sloppy)
# where the former is a normative and the latter a descriptive transducer.

# En overflødig linie, der skal få systemet til at kompilere på ny

# Her bygger vi en analysator for vestgrønlandsk
# **********************************************

# Tools used when compiling the transducers

# These are for Per and for other fst users
# XFST = fst -utf8
# LEXC = lexc -utf8

# These are for the rest of us
XFST = xfst
LEXC = lexc 

ifeq (victorio.uit.no, $(shell hostname))
XFST = /opt/sami/xerox/c-fsm/ix86-linux2.6-gcc3.4/bin/fst -utf8
LEXC = /opt/sami/xerox/bin/lexc -utf8
endif


# Directories:
scripts=$(GTHOME)/gt/script

#Setting the default target:
TARGET = sloppy

# Kildefiler
# **********

SRCS = \
	kal-lex.txt \
	noun-kal-lex.txt \
	verb-kal-lex.txt \
	pron-kal-lex.txt \
	ateq-kal-lex.txt \
	ateq-kal-morph.txt \
	abbr-kal-lex.txt \
	acro-kal-lex.txt \
	punct-kal-lex.txt \
	prt-kal-lex.txt \
	num-kal-lex.txt 

ifeq ($(TARGET), strict)
LEX = $(patsubst %,../int/str-%,$(SRCS))

endif


ifeq ($(TARGET), sloppy)
LEX = $(SRCS)

endif

all: $(TARGET)

strict: ikal.fst
sloppy: ikal.fst 


# Here we build the final generator , an inverted transducer of the analyzer.
# It is dependent upon kal.save

# Alle udkommenterede mål i denne liste kan fræmdeles kompileres, ved
# at skrive
# make TARGET=g-kal.fst
# osv. for de andre mål

ikal.fst: ../bin/ikal.fst
../bin/ikal.fst: ../bin/kal.fst \
#				../bin/g-kal.fst \
#				../bin/d-kal.fst \
 				../bin/abbr.txt # kommenter evt ud.
#				../bin/hyph-kal.fst \
#				../bin/phon-kal.fst \
#				../bin/orth-kal.fst  
#				../bin/kal-dis.bin   # Per har ikke siste versjon av vislcg3.
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
	$(XFST) < ../tmp/d-kal-fst-script
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
	$(XFST) < ../tmp/kal-tag-da-script
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
	$(XFST) < ../tmp/g-kal-fst-script
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
	$(XFST) < ../tmp/tag-kal-script
	@rm -f ../tmp/tag-kal-script




# Here comes the part building the basic parser.
# **********************************************

# This goal is to build the final analyser. It depends on all the files.

kal.fst: ../bin/kal.fst
../bin/kal.fst: ../bin/kal.save ../bin/inituppercase.fst
	@echo
	@echo "*** Building kal.fst ***" ;
	@echo
	@printf "read regex [[@\"../bin/kal.save\"] .o. \
	[@\"../bin/inituppercase.fst\"]] ; \n\
	save stack ../bin/kal.fst \n\
	quit \n" > ../tmp/kal-fst-script
	$(XFST) < ../tmp/kal-fst-script
	@rm -f ../tmp/kal-fst-script



# Here we make the abbrevation file for our current preprocessor, 
# the perl-based preprocess (located in the $(scripts) catalogue)

empty:=
comma:=,
space:=$(empty) $(empty)
ABBRSRCS=$(subst $(space),$(comma),$(LEX))

abbr: ../bin/abbr.txt
../bin/abbr.txt: $(scripts)/abbr-extract.pl \
				 $(scripts)/langTools/Util.pm \
				 $(LEX)
	@echo
	@echo "*** Extracting abbreviations from abbr-kal-lex.txt to abbr.txt ***" ;
	@echo
	@perl -I $(scripts) $(scripts)/abbr-extract.pl \
		--output=$@ \
		--abbr_lex=abbr-kal-lex.txt \
		--lex=$(ABBRSRCS)


# The second goal is to build the inituppercase.fst file
# This goal depends on inituppercase.regex

inituppercase.fst: ../bin/inituppercase.fst
../bin/inituppercase.fst: inituppercase.regex
	@echo
	@echo "*** Building inituppercase.fst ***" ;
	@echo
	@printf "read regex < inituppercase.regex \n\
	save stack ../bin/inituppercase.fst \n\
	quit \n" > ../tmp/inituppercase-script
	$(XFST) < ../tmp/inituppercase-script
	@rm -f ../tmp/inituppercase-script

kal.save: ../bin/kal.save
../bin/kal.save: ../bin/xfst-kal.bin ../bin/kal-lex.save
	@echo
	@echo "*** Building the parser kal.save ***"
	@echo
	@printf "read regex [[@\"../bin/kal-lex.save\"] .o. \
	[[@\"../bin/kal-lex.save\"].l .o. [@\"../bin/xfst-kal.bin\"]] \
	] ; \n\
	save stack $@ \n\
	quit \n" > ../tmp/kal-save-script
	$(XFST) < ../tmp/kal-save-script
	@rm -f ../tmp/kal-save-script
# To be used instead of the above when foma has support for -stop:
#	$(XFST) -e "read regex [[@\"../bin/kal-lex.save\"] .o. \
#							[[@\"../bin/kal-lex.save\"].l .o. \
#							 [@\"../bin/xfst-kal.bin\"]] \
#						   ]" \
#			-e "save stack ../bin/kal.save" \
#			-stop

# The first goal is to build kal-lex.save
# This goal depends on a bunch of lexicon files

#kal-lex.save: ../bin/kal-lex.save
#../bin/kal-lex.save: $(LEX)
#	@echo
#	@echo "*** Building kal-lex.save ***"
#	@echo
#	printf "compile-source $(LEX) \n\
#	save-source ../bin/kal-lex.save \n\
#	quit \n" > ../tmp/kal-lex-save-script
#	$(LEXC) < ../tmp/kal-lex-save-script
#	@rm -f ../tmp/kal-lex-save-script

# Foma-kompatible version:
kal-lex.save: ../bin/kal-lex.save
../bin/kal-lex.save: ../tmp/kal-all.lex
	@echo
	@echo "*** Building $(notdir $@) ***"
	@echo
	printf "read lexc < $< \n\
	save stack $@ \n\
	quit \n" > ../tmp/kal-lex-save-script
	$(XFST) < ../tmp/kal-lex-save-script
	@rm -f ../tmp/kal-lex-save-script
# To be used instead of the above when foma has support for -stop:
#	$(XFST) -e "read lexc $<" \
#			-e "save stack $@" \
#			-stop

../tmp/kal-all.lex: $(LEX)
	@echo
	@echo "*** Building $(notdir $@) - foma compatibility ***"
	@echo
	cat $^ > $@


ifeq ($(TARGET), strict)
$(LEX): $(SRCS)
	@echo
	@echo "*** Making restrictive lexicon files ***"
	@echo  
	@grep -v 'SUB' $(patsubst ../int/str-%,%,$@) > $@
endif


# Here we build xfst-kal.bin, the morphophonological component.
# This goal depends on xfst-kal.txt
../tmp/xfst-kal.tmp: xfst-kal.txt
	@echo
	@echo "*** cleaning $< for comments (foma compatibility) ***"
	@echo
	@sed 's/ \!.*$$/ /g' $< | grep -v '^!' | sed 's/$$/ /g' | \
		grep -v 'echo' > $@

xfst-kal.bin: ../bin/xfst-kal.bin
../bin/xfst-kal.bin: ../tmp/xfst-kal.tmp
	@echo
	@echo "*** Building xfst-kal.bin ***"
	@echo
	@printf "source $< \n\
	save stack $@ \n\
	quit \n" > ../tmp/xfst-kal-script
	$(XFST) < ../tmp/xfst-kal-script
	@rm -f ../tmp/xfst-kal-script
# To be used instead of the above when foma has support for -stop:
#	$(XFST) -e "source $<" \
#			-e "save stack $@" \
#			-e "quit"


# Here we build a converter from Kleinschmidt to modern
# orthography.

orth-kal.fst: ../bin/orth-kal.fst
../bin/orth-kal.fst: orth-kal.xfst
	@echo
	@echo "*** Building orth-kal.fst ***" ;
	@echo
	@printf "source $< \n\
	save stack $@ \n\
	quit \n" > ../tmp/orth-script
	$(XFST) < ../tmp/orth-script
	@rm -f ../tmp/orth-script

# Here we build a phonetic transducer 

phon: ../bin/phon-kal.fst
../bin/phon-kal.fst: phon-kal.xfst
	@echo
	@echo "*** Building phon-kal.fst ***" ;
	@echo
	@printf "source $< \n\
	quit \n" > ../tmp/phon-script
	$(XFST) < ../tmp/phon-script
	@rm -f ../tmp/phon-script

# Here we build a hyphenator

hyph: ../bin/hyph-kal.fst
../bin/hyph-kal.fst: hyph-kal.txt
	@echo
	@echo "*** Building hyph-kal.fst ***" ;
	@echo
	@printf "source $< \n\
	save stack $@ \n\
	quit \n" > ../tmp/hyph-script
	$(XFST) < ../tmp/hyph-script
	@rm -f ../tmp/hyph-script


#Let us just make a binary disambiguator
#It can be used instead of the source file.
dis: ../bin/kal-dis.bin
../bin/kal-dis.bin: kal-dis.rle
	@echo
	@echo "*** Building a binary disambiguator kal-dis.bin ***" ;
	@echo
	@vislcg3 --grammar kal-dis.rle --grammar-only --grammar-bin ../bin/kal-dis.bin

# not quite yet...
## Let us just make a binary dependency grammar
## It can be used instead of the source file.
#dep-bin: ../bin/kal-dep.bin
#../bin/kal-dep.bin: kal-dep.rle
#	@echo
#	@echo "*** Building a binary dependency grammar kal-dep.bin ***" ;
#	@echo
#	@vislcg3 --grammar kal-dep.rle --grammar-only --grammar-bin ../bin/kal-dep.bin


clean:
	@rm -f ../bin/* ../tmp/*
