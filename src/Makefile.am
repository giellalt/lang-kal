## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

# always build . last here, and tagsets have to be built after morphology
SUBDIRS = fst filters phonetics hyphenation orthography cg3 transcriptions tagsets .

####### Automake targets: ########

# Define target variables first, before assigning to them:
GT_ANALYSERS=
GT_GENERATORS=
CUSTOM_FSTS=

#### Local modifications in *fst processing: ####
####
#### Copy the fallback targets, and rename them to the desired targets. Then:
#### Replace the 'cp' command (Xerox) / Prepend the hfst-invert command (Hfst -
#### remember to move the $<) with whatever you need to complete
#### the processing to get the final target transducer.
#### Remember to add the dependencies as well.
#### Also make sure that HFST and Xerox processing are the same.
####
#### If you add new transducers to be built, you need to add them to the
#### relevant variable, e.g.:
####
#### if CAN_HFST
#### GT_GENERATORS+=generator-oahpa-gt-norm.hfst
#### endif
####
#### NB!!!! The HFST targets should get a hyphen after 'analyser'/'generator'
#### respectively, to make the local targets minimally different from and
#### slightly more specific than the fallback targets. This is to avoid warnings
#### about duplicate targets. That is, the local targets should looke like:
####
#### analyser-%.hfst: analyser-%.tmp.hfst
#### generator-%.hfst: generator-%.tmp.hfst

##################################################################
#### BEGIN: Add local processing instructions BELOW this line ####
##################################################################

########################################################
#### Add language-specific transducer targets here: ####

#### Xerox transducers:
if CAN_XFST
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=analyser-learner-gt-norm.xfst generator-learner-gt-norm.xfst
endif # WANT_CUSTOM_FSTS

endif # CAN_XFST

#### HFST transducers
if CAN_HFST
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=analyser-learner-gt-norm.hfstol generator-learner-gt-norm.hfstol
endif # WANT_CUSTOM_FSTS

endif # CAN_HFST

#### FOMA transducers
if CAN_FOMA
GT_ANALYSERS+=
GT_GENERATORS+=

if WANT_CUSTOM_FSTS
CUSTOM_FSTS+=analyser-learner-gt-norm.foma generator-learner-gt-norm.foma
endif # WANT_CUSTOM_FSTS

endif # CAN_FOMA

#################################################
#### Add language-specific build rules here: ####

# This is the normative analyser:
# Remove sub-standard/error forms to get a normative transducer
analyser-learner-gt-norm.xfst \
analyser-learner-gt-norm.hfst \
analyser-learner-gt-norm.foma:
analyser-learner-gt-norm.%: analyser-raw-gt-desc.%            \
					filters/remove-area-tags.%                \
					filters/remove-dialect-tags.%             \
					filters/remove-variant-tags.%             \
					filters/remove-number-string-tags.%       \
					filters/remove-error-strings.%            \
					filters/remove-hyphenation-marks.%        \
					filters/remove-infl_deriv-borders.%       \
					filters/remove-word-boundary.%            \
					filters/remove-orthography-tags.%         \
					filters/remove-Orth_IPA-strings.%         \
					filters/remove-orig_lang-tags.%           \
					filters/remove-Use_GC-strings.%           \
					filters/remove-Use_minusGC-tags.%         \
					filters/remove-Use_minus_PMatch-tags.%    \
					filters/remove-Use_PMatch-strings.%       \
					filters/remove-usage_except_NGminip-tags.%\
					filters/remove-mwe-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/remove-area-tags.$*\"                \
			.o. @\"filters/remove-dialect-tags.$*\"             \
			.o. @\"filters/remove-variant-tags.$*\"             \
			.o. @\"filters/remove-number-string-tags.$*\"       \
			.o. @\"filters/remove-error-strings.$*\"            \
			.o. @\"filters/remove-orig_lang-tags.$*\"           \
			.o. @\"filters/remove-orthography-tags.$*\"         \
			.o. @\"filters/remove-Orth_IPA-strings.$*\"         \
			.o. @\"filters/remove-Use_minus_PMatch-tags.$*\"    \
			.o. @\"filters/remove-Use_GC-strings.$*\"           \
			.o. @\"filters/remove-Use_minusGC-tags.$*\"         \
			.o. @\"filters/remove-Use_PMatch-strings.$*\"       \
			.o. @\"filters/remove-usage_except_NGminip-tags.$*\"\
			.o. @\"filters/remove-mwe-tags.$*\"                 \
			.o. @\"$<\"                                         \
			.o. @\"filters/remove-hyphenation-marks.$*\"        \
			.o. @\"filters/remove-infl_deriv-borders.$*\"       \
			.o. @\"filters/remove-word-boundary.$*\"            \
			; \n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# This is the normative generating transducer.
generator-learner-gt-norm.xfst \
generator-learner-gt-norm.hfst \
generator-learner-gt-norm.foma:
generator-learner-gt-norm.%: analyser-raw-gt-desc.%           \
					filters/make-optional-transitivity-tags.% \
					filters/make-optional-homonymy-tags.%     \
					filters/make-optional-hyph-tags.%         \
					filters/make-optional-variant-tags.%      \
					filters/make-optional-semantic-tags.%     \
					filters/make-optional-adv_comp-tags.%     \
					filters/make-optional-orig_lang-tags.%    \
					filters/make-optional-grammatical-tags.%  \
					filters/remove-area-tags.%                \
					filters/remove-dialect-tags.%             \
					filters/remove-hyphenation-marks.%        \
					filters/remove-infl_deriv-borders.%       \
					filters/remove-word-boundary.%            \
					filters/remove-number-string-tags.%       \
					filters/remove-orthography-tags.%         \
					filters/remove-Orth_IPA-strings.%         \
					filters/remove-error-strings.%            \
					filters/remove-Use_GC-strings.%           \
					filters/remove-Use_minusGC-tags.%         \
					filters/remove-Use_minus_PMatch-tags.%    \
					filters/remove-Use_PMatch-strings.%       \
					filters/remove-usage_except_NGminip-tags.%\
					filters/remove-mwe-tags.%
	$(AM_V_XFST_TOOL)$(PRINTF) "read regex \
				@\"filters/make-optional-transitivity-tags.$*\" \
			.o. @\"filters/make-optional-homonymy-tags.$*\"     \
			.o. @\"filters/make-optional-hyph-tags.$*\"         \
			.o. @\"filters/make-optional-variant-tags.$*\"      \
			.o. @\"filters/make-optional-semantic-tags.$*\"     \
			.o. @\"filters/make-optional-adv_comp-tags.$*\"     \
			.o. @\"filters/make-optional-orig_lang-tags.$*\"    \
			.o. @\"filters/make-optional-grammatical-tags.$*\"  \
			.o. @\"filters/remove-area-tags.$*\"                \
			.o. @\"filters/remove-dialect-tags.$*\"             \
			.o. @\"filters/remove-number-string-tags.$*\"       \
			.o. @\"filters/remove-error-strings.$*\"            \
			.o. @\"filters/remove-orthography-tags.$*\"         \
			.o. @\"filters/remove-Orth_IPA-strings.$*\"         \
			.o. @\"filters/remove-Use_minus_PMatch-tags.$*\"    \
			.o. @\"filters/remove-Use_GC-strings.$*\"           \
			.o. @\"filters/remove-Use_minusGC-tags.$*\"         \
			.o. @\"filters/remove-Use_PMatch-strings.$*\"       \
			.o. @\"filters/remove-usage_except_NGminip-tags.$*\"\
			.o. @\"filters/remove-mwe-tags.$*\"                 \
			.o. @\"$<\"                                         \
			.o. @\"filters/remove-hyphenation-marks.$*\"        \
			.o. @\"filters/remove-infl_deriv-borders.$*\"       \
			.o. @\"filters/remove-word-boundary.$*\"            \
			;\n\
		 twosided flag-diacritics\n\
		 save stack $@\n\
		 quit\n" | $(XFST_TOOL)

# We need to add processing of language-specific tags in the generator:
define giella_generators
generator-dict-gt-norm.$(1)        \
generator-disamb-gt-norm.$(1)      \
generator-gramcheck-gt-norm.$(1)   \
generator-gt-desc.$(1)             \
generator-gt-norm.$(1)             \
generator-oahpa-gt-norm.$(1)     : \
generator-%.$(1): generator-%.tmp.$(1) \
				  filters/make-optional-derivation-tags.$(1)
	$$(AM_V_XFST_TOOL)$$(PRINTF) "read regex \
				@\"filters/make-optional-derivation-tags.$(1)\"  \
			.o. @\"$$<\"                                         \
			;\n\
		 $$(INVERT_XFST)$$(INVERT_FOMA)\
		 save stack $$@\n\
		 quit\n" | $$(XFST_TOOL)
endef
$(foreach fst,hfst xfst foma,$(eval $(call giella_generators,$(fst))))

##################################################################
#### END: Add local processing instructions ABOVE this line ######
##################################################################

include $(top_srcdir)/../giella-core/am-shared/src-dir-include.am
