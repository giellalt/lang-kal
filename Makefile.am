## Process this file with automake to produce Makefile.in
## Copyright: Sámediggi/Divvun/UiT
## Licence: GPL v3+

ACLOCAL_AMFLAGS = -I m4
SUBDIRS = src doc

und.timestamp: ${GTCORE}/templates/und/template.timestamp
	echo "The build templates are newer than this language directory"
	echo "To get new build rules and conventions, run: "
	echo "${GTCORE}/merge-templates.sh"
	echo "The build will die now, but if you do not want to update your"
	echo "templates, run make again, this message won't reappear."
	touch $@
	exit 1
