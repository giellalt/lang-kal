## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

####### Source file defs: ########

# set this to names of available orthographic rules in regex and xfst format
GT_ORTHOGRAPHIC_SRCS=inituppercase.regex \
					 allcaps.xfscript    \
					 spellrelax.regex    \
					 spellrelax-mobile-keyboard.regex \
					 kleinschmidt2norm.xfscript

####### Automake targets: ########

GT_ORTHOGRAPHIC_FSTS=
if CAN_HFST
GT_ORTHOGRAPHIC_FSTS+=allcaps.hfst \
					  inituppercase.hfst \
					  spellrelax.hfst \
					  spellrelax-mobile-keyboard.hfst \
					  kleinschmidt2norm.hfst \
					  norm2kleinschmidt.hfst
endif
if CAN_XFST
GT_ORTHOGRAPHIC_FSTS+=allcaps.xfst \
					  inituppercase.xfst \
					  spellrelax.xfst \
					  spellrelax-mobile-keyboard.xfst \
					  kleinschmidt2norm.xfst \
					  norm2kleinschmidt.xfst
endif

# We need a target to invert the conversion direction:
norm2%.hfst: %2norm.hfst
	$(AM_V_GEN)$(HFST_INVERT) -i $< -o $@

norm2%.xfst: %2norm.xfst
	$(XFST_verbose)$(XFST) $(VERBOSITY) \
			-e "load stack < $<" \
			-e "invert net" \
			-e "save stack $@ " \
			-stop

include $(top_srcdir)/am-shared/orthography-include.am
