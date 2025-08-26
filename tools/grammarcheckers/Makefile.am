## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

SUBDIRS = filters . tests

####### Source file names: ########
# NB! If any of the filenames below are changed, then remember to also update
# the corresponding filename in `pipespec.xml.in`

GIELLA_GC_MWEDIS_SRC=mwe-dis.cg3
GIELLA_GC_SPELLER_CG_SRC=spellchecker.cg3
GIELLA_GC_GRAMCHECKER_SRC=grammarchecker.cg3
GIELLA_GC_WHSPACE_ANAL_SRC=analyser-gt-whitespace.regex \
						   analyser-gt-errorwhitespace.regex

# Will by default use the one in src/cg3/disambiguator.cg3. To use a
# different file, specify anther filename here:
GIELLA_GC_DISAMBIGUATOR_SRC=disambiguator.cg3

# If a valency file is used, specify its name here:
GIELLA_GC_VALENCY_SRC=
## NB! This can not be used due to the include statement, and out-of-source builds.
## Instead we define a separate target below that changes the include statement to
## the correct path, and use the LOCAL_GC_ZIP_FILES variable to make sure the new
## file is included in the grammar checker.

# If there are additional, language specific files used in the GC archive,
# specify here:
LOCAL_GC_ZIP_FILES=gen-valency.bin

#### BEGIN: Local build targets: ####

# Override valency source processing:
gen-valency.cg3: $(top_srcdir)/src/cg3/valency.cg3 \
				 $(top_srcdir)/tools/grammarcheckers/liststemplates.cg3
	$(AM_V_GEN)sed 's|../../tools/grammarcheckers/liststemplates.cg3|$(top_srcdir)/tools/grammarcheckers/liststemplates.cg3|g' $< > $@

#### END: Local build targets:   ####

#### Do NOT edit below here: ####
include $(top_srcdir)/../giella-core/am-shared/tools-grammarcheckers-dir-include.am
include $(top_srcdir)/../giella-core/am-shared/devtest-include.am
