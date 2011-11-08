## Process this file with autoconf to produce configure script

## Copyright (C) 2011 Samediggi

## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.

## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.

## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

# These need to be always written:
AC_INIT([gtlangs-kal], [20111108], [bugs@divvun.no], [gtlangs-kal],
        [http://divvun.no])
AC_REVISION([$Revision$])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([-Wall -Werror foreign])
# set all language codes:
# GTLANG is the name of the directory under gtlangs
AC_SUBST([GTLANG], [kal])
# GTLANG2 is the shortest unambiguous language code used with e.g. spelling
AC_SUBST([GTLANG2], [kl])
# language code from ISO 639-1 if available
AC_SUBST([GT_639_1], [kl])
# language code from ISO 639-2 (or 3)
AC_SUBST([GT_639_2], [kal])

# ensure that giellatekno svn is setup or installed
gt_PROG_SCRIPTS_PATHS

# kal uses m4 to process
AC_PATH_PROGS([M4], [m4 gm4])

# check and setup HFST
gt_PROG_HFST
gt_PROG_HFST_PATH

# check and setup xfst
gt_PROG_XFST

# check and setup vislcg3
gt_PROG_VISLCG3

# allow enabling and disabling hfst and xfst
gt_ENABLE_TOOLKITS

# allow enabling and disabling parts of automata
gt_ENABLE_TARGETS

# will be GT_CONFIG_FILES =:
AC_CONFIG_FILES([Makefile src/Makefile src/morphology/Makefile src/orthography/Makefile src/phonology/Makefile src/spellchecker/Makefile src/syntax/Makefile doc/Makefile])

# must retain as-is
AC_OUTPUT

# print information at the end of ./configure
gt_PRINT_FOOTER

