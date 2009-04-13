SHELL = /bin/sh
#!/usr/bin/make
#
# This is a makefile to automatise most of the testing.
# It is language independent within the framework of the Sámi language
# technology project. See further user documentation (and technical as well)
# in $CVSROOT/gt/doc/docu-testing.html

# VARIABLE DEFINITIONS
# ====================

# Where all the perl scripts are:
BINDIR = ../../../script/testing

# Directory where all the compiled fst's are:
FSTDIR = ../bin

# Directory for the source files (which compile into fst's):
SRCDIR = ../src

# The temp directory:
TEMP = ../../tmp

# This variable is holding the filename of the save file:
# (makes the Makefile truly language independent for
# the Sami languages)
SAVEFILE = $(wildcard $(FSTDIR)/kal.save)

# Copied from old LS makefile:
# Bond, James Bond
UMASK=@umask 007

# Empty variable to be overridden by the user when
# generating paradigms:
WORD =

# These variables define  the relationship between the source files
# and the final output files (the reports), such that one can con-
# struct a list of targets for the main target
NGenFiles := $(patsubst %.txt,%.greport,$(wildcard n-*.txt))
NAnaFiles := $(patsubst %.txt,%.areport,$(wildcard n-*.txt))
VGenFiles := $(patsubst %.txt,%.greport,$(wildcard v-*.txt))
VAnaFiles := $(patsubst %.txt,%.areport,$(wildcard v-*.txt))
AGenFiles := $(patsubst %.txt,%.greport,$(wildcard a-*.txt))
AAnaFiles := $(patsubst %.txt,%.areport,$(wildcard a-*.txt))


# MAJOR TARGETS, HOUSEKEEPING TARGETS
# ===================================

# Default target:
# Remove the comments in front of the verb and adjective
# targets when you have codes and test cases for them
.PHONY: all
all: n-g.summary \
	 n-a.summary \
	 v-g.summary \
	 v-a.summary \
#	 a-g.summary \
#	 a-a.summary

# If you only want to test nouns:
.PHONY: all-n
all-n: n-g.summary n-a.summary

# If you only want to test intransitive verbs:
.PHONY: all-i
all-i: i-g.summary i-a.summary

# If you only want to test transitive verbs:
.PHONY: all-t
all-t: t-g.summary t-a.summary

# If you only want to test pronouns:
.PHONY: all-p
all-p: p-g.summary p-a.summary

# If you only want to test verbal generation, use v-g.summary
# as target. Etc. for the other cases. And do you only want to
# test a specific word or inflection class, type the name of
# the file containing the infl. word, but replace the suffix
# .txt with .greport for generation, and .areport for analysis.

# Clean up all the mess created during a test pass, to prepare for new tests:
#		  *.tgz	\	# just to remove archive files used for file transfering
#		  *~		# to remove backup copies that may clutter the directory
.PHONY: clean
clean:
	@echo
	@echo "*** Now deleting ALL the generated files ***"
	@echo
	@rm -f *.testbase \
		  *.gtest \
		  *.atest \
		  *.gfacit \
		  *.afacit \
		  *.greport \
		  *.areport \
		  *.gresult \
		  *.aresult \
		  *.summary \
		  *.ptest \
		  *paradigm \
		  *.tgz	\
		  *~ \
		  $(TEMP)/*test-script

.PHONY: almost-clean
almost-clean:
	@echo
	@echo "*** Now deleting all generated files but the summary & parad. files ***"
	@echo
	@rm -f *.testbase \
		  *.gtest \
		  *.atest \
		  *.gfacit \
		  *.afacit \
		  *.greport \
		  *.areport \
		  *.gresult \
		  *.aresult \
		  *.ptest \
		  *.tgz	\
		  *~ \
		  $(TEMP)/*test-script


# POS SPECIFIC SECTIONS
# =====================

# NOUNS
# =====

# Create all the noun test file bases:
n-%.testbase: n-%.txt noun-codes.txt
	@echo
	@echo "*** Creating the test base for n-$*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNforms.pl noun-codes.txt $< > $@
	@chmod 660 $@

# Finally, we concatenate all *.greports
n-g.summary: $(NGenFiles)
	@cat $^ > $@
	@echo
	@echo "*** All noun word form generation testing is done.      ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Finally, we concatenate all *.areports:
n-a.summary: $(NAnaFiles)
	@cat $^ > $@
	@echo
	@echo "*** All noun word form analysis testing is done.        ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Create noun paradigm generation input file:
n-para.ptest: noun-codes.txt
	@echo
	@echo "*** Creating the noun paradigm input file for '$(WORD)' ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNword.pl $< $(WORD) > $@
	@chmod 660 $@

# Paradigm generation:
.PHONY: n-paradigm
n-paradigm: n-para.ptest savefile
	@echo
	@echo "*** Running the paradigm generator for '$(WORD)' ***"
	@echo
	@printf "load $(SAVEFILE) \n\
	apply down <$< \n\
	quit \n" > $(TEMP)/$@-gtest-script
	@xfst -utf8 < $(TEMP)/$@-gtest-script > $(WORD).paradigm
	@rm -f $(TEMP)/$@-gtest-script
	@rm -f $<
	@less $(WORD).paradigm


# INTRANSITIVE VERBS
# =====

# Create all the intransitive verb test file bases:
i-%.testbase: i-%.txt intrans-codes.txt
	@echo
	@echo "*** Creating the test base for i-$*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNforms.pl intrans-codes.txt $< > $@
	@chmod 660 $@

# Finally, we concatenate all *.greports:
i-g.summary: $(VGenFiles)
	@cat $^ > $@
	@echo
	@echo "*** All intrans word form generation testing is done.      ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Finally, we concatenate all *.areports:
i-a.summary: $(VAnaFiles)
	@cat $^ > $@
	@echo
	@echo "*** All intrans word form analysis testing is done.        ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Create intrans paradigm generation input file:
i-para.ptest: intrans-codes.txt
	@echo
	@echo "*** Creating the intrans paradigm input file for '$(WORD)' ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNword.pl $< $(WORD) > $@
	@chmod 660 $@

# Paradigm generation:
i-paradigm: i-para.ptest savefile
	@echo
	@echo "*** Running the paradigm generator for '$(WORD)' ***"
	@echo
	@printf "load $(SAVEFILE) \n\
	apply down <$< \n\
	quit \n" > $(TEMP)/$@-gtest-script
	@xfst -utf8 < $(TEMP)/$@-gtest-script > $(WORD).paradigm
	@rm -f $(TEMP)/$@-gtest-script
	@rm -f $<
	@less $(WORD).paradigm


# TRANSITIVE VERBS
# =====

# Create all the transitive verb test file bases:
t-%.testbase: t-%.txt trans-codes.txt
	@echo
	@echo "*** Creating the test base for t-$*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNforms.pl trans-codes.txt $< > $@
	@chmod 660 $@

# Finally, we concatenate all *.greports:
t-g.summary: $(VGenFiles)
	@cat $^ > $@
	@echo
	@echo "*** All trans word form generation testing is done.      ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Finally, we concatenate all *.areports:
t-a.summary: $(VAnaFiles)
	@cat $^ > $@
	@echo
	@echo "*** All trans word form analysis testing is done.        ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Create trans paradigm generation input file:
t-para.ptest: trans-codes.txt
	@echo
	@echo "*** Creating the trans paradigm input file for '$(WORD)' ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNword.pl $< $(WORD) > $@
	@chmod 660 $@

# Paradigm generation:
t-paradigm: t-para.ptest savefile
	@echo
	@echo "*** Running the paradigm generator for '$(WORD)' ***"
	@echo
	@printf "load $(SAVEFILE) \n\
	apply down <$< \n\
	quit \n" > $(TEMP)/$@-gtest-script
	@xfst -utf8 < $(TEMP)/$@-gtest-script > $(WORD).paradigm
	@rm -f $(TEMP)/$@-gtest-script
	@rm -f $<
	@less $(WORD).paradigm


# PRONOUNS
# ========

# Create all the pronoun test file bases:
p-%.testbase: p-%.txt pron-codes.txt
	@echo
	@echo "*** Creating the test base for p-$*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNforms.pl pron-codes.txt $< > $@
	@chmod 660 $@

# Finally, we concatenate all *.greports:
p-g.summary: $(PGenFiles)
	@cat $^ > $@
	@echo
	@echo "*** All pronoun word form generation testing is done.      ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Finally, we concatenate all *.areports:
p-a.summary: $(PAnaFiles)
	@cat $^ > $@
	@echo
	@echo "*** All pronoun word form analysis testing is done.        ***"
	@echo "*** The concatenated reports are stored in $@. ***"
	@echo
#	@less $@

# Create pronoun paradigm generation input file:
p-para.ptest: pron-codes.txt
	@echo
	@echo "*** Creating the pronoun paradigm input file for '$(WORD)' ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/merge-codesNword.pl $< $(WORD) > $@
	@chmod 660 $@

# Paradigm generation:
p-paradigm: p-para.ptest savefile
	@echo
	@echo "*** Running the paradigm generator for '$(WORD)' ***"
	@echo
	@printf "load $(SAVEFILE) \n\
	apply down <$< \n\
	quit \n" > $(TEMP)/$@-gtest-script
	@xfst -utf8 < $(TEMP)/$@-gtest-script > $(WORD).paradigm
	@rm -f $(TEMP)/$@-gtest-script
	@rm -f $<
	@less $(WORD).paradigm


# POS-independent parts:
# ======================

# Make sure there is an available smX.save in the parent directory:
savefile:
	@cd $(SRCDIR)/ && $(MAKE)

# Word form generation:
# ---------------------

# Make test cases for word form generation tests,
# based on the test file bases:
%.gtest: %.testbase
	@echo
	@echo "*** Creating test cases for word form generation for $*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/make-gen-test.pl $< > $@
	@chmod 660 $@

# Make facit files containing the expected output from the
# word form generation test run:
%.gfacit: %.testbase
	@echo
	@echo "*** Creating facit file for word form generation for $*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/make-gen-test-facit.pl $< > $@
	@chmod 660 $@

# Here we run the actual generation test:
%.gresult: %.gtest savefile
	@echo
	@echo "*** Running the word form generator test for $*.txt ***"
	@echo
	@printf "load $(SAVEFILE) \n\
	apply down <$< \n\
	quit \n" > $(TEMP)/$*-gtest-script
	@xfst -utf8 < $(TEMP)/$*-gtest-script > $@
	@rm -f $(TEMP)/$*-gtest-script

# Then we compare with the facit, and report any differences:
%.greport: %.gresult %.gfacit
	@echo
	@echo "*** Diffing the test result and the facit file for   ***"
	@echo "*** word form generation for $*.txt ***"
	@echo "*** \"Error 1 (ignored)\" means that there were diffs. ***"
	@echo
	@rm -f $@
	-$(UMASK) && \
	diff --side-by-side --width=70 $< $*.gfacit > $@
	@chmod 660 $@


# Word form analysis:
# -------------------

# First, create the needed test file
# NB! The sorting specified does not work completely as intended!
# This will lead to small differences between the facit file and
# the analysis output. This happens when one input string gives
# more than one analysis. The expected output is according to the
# order in the inflection lexicon, but the tags in the facit file
# are sorted alphabetically (due to the way sorting is performed -
# there is no way to tell GNU sort to ONLY sort on a specified key).
# For a completely satisfactory result we need a different solution.
# The present solution will have to be good enough for now.
%.atest: %.testbase
	@echo
	@echo "*** Creating test cases for word form analysis for $*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/make-ana-test.pl $< \
	| sort -t '\t' -k 1 | cut -f 1 | uniq > $@
	@chmod 660 $@

# Make facit files containing the expected output from the
# word form analysis test run:
%.afacit: %.testbase
	@echo
	@echo "*** Creating facit file for word form analysis for $*.txt ***"
	@echo
	@rm -f $@
	$(UMASK) && \
	$(BINDIR)/make-ana-test.pl $< \
	| sort -t '\t' -k 1 | cut -f 2 > $@
	@chmod 660 $@

# Here we run the actual analysis test:
%.aresult: %.atest savefile
	@echo
	@echo "*** Running the word form analysis test for verbs ***"
	@echo
	@printf "load $(SAVEFILE) \n\
	apply up <$< \n\
	quit \n" > $(TEMP)/$*-atest-script
	@xfst -utf8 < $(TEMP)/$*-atest-script > $@
	@rm -f $(TEMP)/$*-atest-script

# Finally, we compare with the facit, and report any differences:
# Due to the sorting problems mentioned above, there will always (?)
# be (small) differences.
%.areport: %.aresult %.afacit
	@echo
	@echo "*** Diffing the test result and the facit file for ***"
	@echo "*** word form analysis for $*.txt       ***"
	@echo "*** \"Error 1 (ignored)\" means that there were diffs.   ***"
	@echo
	-@diff --side-by-side --width=70 $< $*.afacit > $@

