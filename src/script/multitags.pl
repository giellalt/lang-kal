#!/usr/bin/perl
use warnings;
use strict;
use utf8;

while (<>) {
	chomp;
	if (/\bUTE\s+nn\b/) {
		$_ .= ' UTE_nn';
	}
	s/  / /g;
	$_ .= "\n";
	print;
}
