#!/usr/bin/perl -w

# The necessary unicode definitions
use utf8;
binmode( STDIN, ':utf8' );
binmode( STDOUT, ':utf8' );
binmode( STDERR, ':utf8' );
use open 'utf8';

# usage: cat fil_kl |addtrad_klda
# (needs dakl_lex)

$ARG0 =$ARGV[0];
if ($ARG0 && $ARG0 =~ s/lang=(eo|da)&?//) {
  $lang = $1;
}
$infile = $ARG0;

if (! $lang) {$lang = "da";}

#print "--------lang=$lang  lexfile=$infile\n";
if ($lang eq "eo") {
  open(FH, "<src/kaleo-lex.txt");
  while (<FH>) {
    if (/^(.+?)\t(.+?) *$/) {
      $dan =$1; $eo=$2;
      $esp{$dan} = $eo;
#      if ($dan =~ /^sø/) {print "---$dan $esp{$dan}\n";}
    }
  }
}


open(FH, "<$infile");
while (<FH>){
  s/\t\(.*?\) */\t/;
	# Match unicode letters
    if (/^(.+)\t([\pL<].+?) *$/) {
      $kal =$1;
      $trans =$2;
      if ($kal =~ s/(_[A-Z])$//) {
	  $pos =$1;
      }
      else {$pos ="";}
#      if (/^aleq/) {print "---$kal $trans\n";}
      $kal =~ s/;=/;/;
      @words =split /;/, $kal;
      foreach (@words) {
	s/^ +//;
	if ($trans) {
	  if ($trans =~ /<eo:./) {
	    if ($lang eq "da") {
	      $trans =~ s/<eo:.*?\//</; # remove esperanto
	    }
	    else {
	      $trans =~ s/<eo:(.*?)\/.*?>/<$1>/;
	    }
	  }
	  $word =$_;
	  $word =~ s/1\) +//g;
	  # Match unicode letters
	  $word =~ s/([\pL<]) 2\)/$1\;/; # avippaa	1) deler det i to dele 2) lader sig skille fra ham/hende
	  $word =~ s/ ([IVX]+|\(.*|\!)//; # I, II
	  $trans =~ s/ *\(.*?\)//g;
	  $trans =~ s/; */\//g;
	  $trans =~ s/ /_/g;
	  if ($trans && $lang eq "eo" && ! ($trans =~ /^</)) {
	    $esptrad ="";
#	    $trans =~ s/([\,\;\:\/\|])/ $1 /g;
	    $trans =~ s/\_/ /g;
	    if ($esp{$trans}) {$esptrad = $esp{$trans};}
	    else {$esptrad = $trans;}
	    $trans =$esptrad;
#	    $trans =~ s/ +$//;
#	    $trans =~ s/ *([\/\|]) */$1/g;
	  }
	  if ($pos) {$trad{"$word$pos"} .= "/$trans";}
	  else {$trad{$word} .= "/$trans";}
	  if (! ($trans eq "nil")) {
	    if (($word =~ s/ppaa$/p/) # transitive
	    || ($word =~ s/rpaa$/r/) # transitive
	    || ($word =~ s/ppoq$/p/) # intransitive
	    || ($word =~ s/rpoq$/r/) # intransitive
	    || ($word =~ s/uaa$/u/) # transitive
	    || ($word =~ s/vaa$//) # transitive
	    || ($word =~ s/([iua])voq$/$1/)) { # intransitive
		    if ($pos) {$trad{"$word$pos"} .= "/$trans";}
		    else {$trad{$word} .= "/$trans";}
		}
#	    $trad{$word} =$trans;
	  }
	  $trans =~ s/\/ */\|/g;
#	  if (/^aleq/) {print "---$word $trans\n";}

#	if (! ($trans =~ /^[<_=]/)) {
#	  $printout =$trans;
#	  $printout =~ s/_/ /g;
#	  $printout =~ s/\|/; /g;
#	  print "¶\n$printout\n";
#	} # writes lex file for eo translation
	}
#	else {print "---no dan for $_\n";}
      }
    }
}
#goto slut;

while (<STDIN>) {
  $ulang = "\U$lang";
  if (/\"(.+)\"/) {
    $base =$1;
    if (/[\+ ]([NV]|nv|vn)[\+ ]/) { # use topclass or first internal class
	$pos =$1;
	$pos =~ s/nv/N/;
	$pos =~ s/vn/V/;
	$pos = "_" . $pos;
    }
    if ($trad{"$base$pos"}) {
	$trans = $trad{"$base$pos"};
	$trans =~ s/^\///;
      s/\" /\" <$ulang:$trans> /;
    }
    elsif ($trad{"$base"}) {
	$trad{"$base"} =~ s/^\///;
      s/\" /\" <$ulang:$trad{$base}> /;
    }
    s/=/ = /g;
    $line =$_;
    while ($line =~ s/( ([nv]+ )?)([A-Z][A-Z]+|U) /$1/ && $trad{$3}) {
      $der =$3;
      if ($2) {$overgang =$2;} else {$overgang ="";}
      $trans = $trad{$der};
      $trans =~ s/^\///;

      s/ $der / $der $trans /;
    }
  }
  print;
}

slut:
