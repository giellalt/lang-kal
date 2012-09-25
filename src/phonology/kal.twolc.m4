!
! Two-level rules for Greenlandic
!
! Copyright (C) Lingsoft, Inc. 2004
!
! All rights reserved.
!
! $Id: twol-kal.txt 25426 2009-04-21 09:48:21Z boerre $
!

changequote(<<,>>)
changecom(<<!>>,<<
>>)
define(<<FLAGINIT>>,
<<ifdef(<<$1>>,<<define(<<$1>>,1)>>,<<define(<<$1>>,0)>>)>>)dnl
dnl
define(<<DIVNUM>>,0)dnl
define(<<ENDOMIT>>,<<popdef(<<DIVNUM>>)divert(DIVNUM)dnl>>)dnl
define(<<ENDKEEP>>,<<popdef(<<DIVNUM>>)divert(DIVNUM)dnl>>)dnl
define(<<OMITIF>>,
  <<pushdef(<<DIVNUM>>,ifelse(eval($1),0,0,-1))divert(DIVNUM)dnl>>)dnl
define(<<KEEPIF>>,
  <<pushdef(<<DIVNUM>>,ifelse(eval($1),0,-1,0))divert(DIVNUM)dnl>>)dnl
define(<<ELSE>>,
  <<define(<<DIVNUM>>,ifelse(DIVNUM,0,-1,0))divert(DIVNUM)dnl>>)dnl


FLAGINIT(<<HYPHENATE>>)
FLAGINIT(<<BASE>>)
FLAGINIT(<<NORAISE>>)
!FLAGINIT(<<BORDER>>)
FLAGINIT(<<GEN>>)

Alphabet
  %= %* %+ %- %/ a b c d e:e f g:g h i:i j k l m n o p
! p:g p:j p:k p:m p:n p:p p:q p:r p:s p:t p:v
! s:g s:j s:k s:m s:n s:p s:q s:r s:s s:t s:v
! g:g g:j g:k g:m g:n g:p g:q g:r g:s g:t g:v
! j:g j:j j:k j:m j:n j:p j:q j:r j:s j:t j:v
! k:g k:j k:k k:m k:n k:p k:q k:r k:s k:t k:v
! m:g m:j m:k m:m m:n m:p m:q m:r m:s m:t m:v
! n:g n:j n:k n:m n:n n:p n:q n:r n:s n:t n:v
! t:g t:j t:k t:m t:n t:p t:q t:r t:s t:t t:v
! v:g v:j v:k v:m v:n v:p v:q v:r v:s v:t v:v

q r s t u v:v w x y z æ ø å ó ú
  ü é è ë ê à á ã ö ä ô â í î ñ ç %>:0 %<:0 #:0 

i2:i i3:i t2:t 

!Trond
%TRUNC:0 ! minus-suffikser, trunkerer
%CLIT:0 ! Kitika
%STRUNC:0	! trunkerer både vokal og konsonant
%PRONTRUNC:0
%POSSESSORTRUNC:0
%likTRUNC:0
%VCTRUNC:0
%CVqTRUNC:0
%VTRUNC:0
%qaGEMIN:0
%qoGEMIN:0
!/Trond

KEEPIF(HYPHENATE)
  %|:# %\:0 %^ %· %± %¶ %~:0
ELSE

  %^:0 %·:0 %¶:0 %¶:0

KEEPIF(BASE)
 %| %\ %~
ENDKEEP
OMITIF(BASE||HYPHENATE)
 %|:0 %\:0 %~:0
ENDOMIT

ENDKEEP

  %0 1 2 3 4 5 6 7 8 9 %(:0 %):0
  %& %. %, %! %: %' %[:0 %]:0 %_
  %TRUNC:0 %CLIT:0 %STRUNC:0 ;

!Diacritics
!
Sets

WWW = a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å ü é ö ;
Segment = a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å ü é ö ;

Vow = a e i o u æ ø å i2 i3;

Cns = b c d f g h j k l m n p q r s t v w z ;
Cnsnov = b c d f g h j k l m n p q r s t w z ;

Uvular = q r ;

NonUvular = b c d f g h j k l m n p s t v w x z ;

Border = %~ %| %> %< # ;

Definitions

KEEPIF(NORAISE || BASE)
  OCAP = [ ] ;
ELSE
  OCAP = 0:%** ;
ENDKEEP

Cmp = [ %~: | %>: | %\: ] ;

Rules

OMITIF(NORAISE)

"permission to raise"
0:%* => [\:%* | #:] _ :WWW ;

"consistency of raising"
0:%* /<= [\:%* | #:] :WWW :* _;
        _ :* \:%* :WWW ;

ENDOMIT

"tVow"
t2:s <=> :Vow Border:0+ OCAP _ :0* OCAP :Vow;

!"InfinitivLu"
!0:l <=> [ :a | :u | :i ] %>: _ OCAP l:l;

"IndikativVu"
v:p <=> [ :p | :r ] %>: OCAP _ OCAP [ :u | :i | :a | :o ];
        _ Border:0+ OCAP X:X ;

!"xOprydning"
!x:0 <= Cns %>: _;

"xpAssimilation"
x:p <=> [ :a | :i | :u ] %>: OCAP _ :0* OCAP :p ;

"pAssimilation"
p:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (t k s v j g q r t2)
      Xs in (t k s v j g q r t)
matched;

"tAssimilation"
t:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p k v j g q r)
      Xs in (p k v j g q r)
matched;

"kAssimilation"
k:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p t s v j g q r t2)
      Xs in (p t s v j g q r t)
matched;

"sAssimilation"
s:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p t k v j g n q r t2)
      Xs in (p t k v j g n q r t)
matched;

"vAssimilation"
v:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (t k s j g n q r t2)
      Xs in (t k s j g n q r t)
matched;

"jAssimilation"
j:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p t k s v g n q r t2)
      Xs in (p t k s v g n q r t)
matched;

"gAssimilation"
g:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p t k s v j n q r t2)
      Xs in (p t k s v j n q r t)
matched;

"mAssimilation"
m:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p t k s v j g n q r t2)
      Xs in (p t k s v j g n q r t)
matched;

"nAssimilation"
n:Xs <=> _ Border:0+ OCAP Xl:Xs ;
where Xl in (p t k s v j g q r t2)
      Xs in (p t k s v j g q r t)
matched;

"vSlet"
v:0 <=> :u Border:0+ OCAP _ Border:0* OCAP [ :i | :e | :a ];
        :u Border:0* OCAP _ Border:0+ OCAP [ :i | :e | :a ];
	_ %>: %TRUNC: ;

!"qgFusion"

"frikativisering, clitisQFrikativisering"
q:r <=> _ %CLIT:  OCAP :g ;
        _ %CLIT:  OCAP [ :m | :l ] ;

"trunkering"
Cns:0 <=> _ %>: %TRUNC:  ;

"TclitisU + Tclitisg1 (part) + regressive assimilation"
t:n <=> _ :0* %CLIT:  OCAP [ :u | :a ];
	_ %CLIT:  OCAP :g ;
        _ Border:0+ OCAP :t ;

"Tclitisg1"
[ p:n | k:n ] <=> _ %CLIT:  OCAP :g ;
        _ Border:0+ OCAP :t ;

!"Tclitisg2"
!g:g => :n %CLIT:  OCAP 0:n OCAP _ ; 

!"clitisLAssimilation"
!Cns:l => _ %CLIT:  :0* OCAP :l ;

"clitisMAssimilation + regressive assimilation for m"
Cns:m <=> _ %CLIT:  :0* OCAP :m ;
	  _ Border:0+ OCAP :m ;

"xmAssimilation"
x:m <=> [ :a | :i | :u ] %>: OCAP _ :0* OCAP :m ;


"clitisVAssimilation + progressivVassimilering"
[ e:a | i:a | o:a | u:a ] => :a %CLIT: OCAP _ \Border:0 ;
                             :a Border:0+ OCAP _ \Border:0 ;

!"clitisNasalisering"
!k:n <=> _ %CLIT OCAP 0:g OCAP :Vow ; 

"aasiit1Vokal"
a:0 <= _ :0* %CLIT :0* OCAP a :0* OCAP a ;

!"aasiit2Vokal"
!0:j <=> :a :0* OCAP :a :0* OCAP _ :0* OCAP :a :0* OCAP :a;

!"schwaC"

"schwaV & stuff"
[ i2:a | i3:a ] <=> _ %>: OCAP Vow ;
		    :a %CLIT OCAP _ ;
 		    :a Border:0+ OCAP _;

"schwaNULL"
i3:0 <=> t :0* _ [ %# | %CLIT ] ;

"radikalisering"
[ u:o | i:e ] => _ Border:0+ OCAP [ :q | :r ];

"eoafRadikalisering"
[ e:i | o:u ] => _ Border:0+ [ NonUvular | :i | :u | :a ];

!"long v devoicing"
!v:f <=> _ Border:0+ OCAP v: ;
!        v: Border:0+ OCAP _ ;

!"first g removal in long ng"
!g:0 <= :n OCAP _ Border:0+ OCAP :n OCAP :g;

!"t to s after i"
!t:s <=> :i Border:0+ OCAP _ :0* OCAP :Vow;
!        _ Border:0+ OCAP :s;

