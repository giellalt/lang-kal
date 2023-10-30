# Kalaallisut description 

All documents in one file



* * *
<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/disambiguator.cg3)</small>

* * *
<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/functions.cg3)</small>
# Fil for at generere de centrale morfologiske processer i vor grønlandske analysator               

## Dokumentasjon for leksikonnavne:

* Z = nomen
* 1 = svag bøjning, p-bøjning
* 2 = sterk bøjning, up-bøjning
* P = plurale tantum
* S = singularis
* - = sterk bøjing som trunkerer (2-)
* a, q, ... = gemineringer ved konsonantiske flexiver
* Z = nomen
* morf = går til derivationsleksika
*      = går til flexivleksika
* tpt  =  
* tup  = 
* K    = Direkte til finale klitika

## Specielle lexica 

## KAPITLER TIL fst-DOKUMENTA

TARIAQAR på transitiver kan både danne transitive, refleksive og passive verber. Derfor bliver
alle forekomster af TARIAQAR ved transitiver startende fra juni 2020 både sendt videre normalt til 
(i) TV-mod_r og tilføjet taggen Gram/Pass og sendt som ny stamme til (ii) IV_r
På den måde vil turen via (i) producere
misissortariaqarpaa	misissor+Gram/TV+TARIAQAR+Der/vv+Gram/TV+V+Ind+3Sg+3Sg, samt
misissortariaqarpoq	misissor+Gram/TV+TARIAQAR+Der/vv+Gram/Refl+V+Ind+3Sg
og turen via IV_r vil generere
misissortariaqarpoq	misissor+Gram/TV+TARIAQAR+Der/vv+Gram/Pass+Gram/IV+Gram/IV+V+Ind+3Sg

BLOKERING AF REKURSIV TIP VED TRANSITIVER
PL20200709
Forkerte læsninger, når IV med TIP viderederiveres i HTR-lexicon, hvor yderligere TIP kan tilføjes som ingerlatitseqqinneq
ingerla+Gram/IV+TIP+Der/vv+Gram/TV+TIP+Der/vv+Gram/Db+Gram/Refl+QQIP+Der/vv+Gram/IV+NIQ+Der/vn
blokeres vha. flaget @P.TIP.ON@ i IV-lexicon og blokeres af flaget @D.TIP@ i transitiv derivation.
Ex
ingerla via IV_voq_stem og får i LEXICON  tilføjet linien
+TIP@P.TIP.ON@+Der/vv:%>tip@P.TIP.ON@ HTR_C_TAQ_tsi ; 
I HTR_C_TAQ_tsi tilføjes der yderligere TIP.
For at forebygge dette tagges derivativkæder med TIP som første element med @D.TIP@

Bemærk at D-flaget principielt kun skal anvendes når TIP er første derivativ i kæden. Det kan nemlig ikke udelukkes, at der på et senere
tidspunkt kan tilføjes yderligere TIP-er 

SÆRLIGT OM Gram/Refl VED TRANSITIVERNE (PL20211121 forsøg)
Foranlediget af ord som 'attorteqqassutigaara', hvor Refl skaber problemer for både oversættelserne
og videre affingering introduceres strengen +TIP+Der/vv+Gram/Db+Gram/Refl som går til XItX ;

SURE er sjældent Db, men  hos Ole Brandt finder vi eksempler som ".. sunaaffa Pikiulinnguarmiut pasillerai (implicit Pikiulinnguarmiunut 
nukani] pilerngullugu nakkartissimasoralugu.

PLEONASTISKE HTR VED NIAR OG QQIP
medtages i IV-lexica med taggen +HTR+Err/Sub og en bemærkning efter !
Fx i LEXICON IVschwa2
+QQIP+Der/vv+HTR+Der/vv+Err/Sub:%>eqqii IV-mod_V ; !Fejl af typen ingerlatitseqqiineq

## Tronds afdeling for debugging.

Følgende leksika var ikke defineret andetsteds (liste), men her
definert ad hoc for at få koden til at kompilere. De bør alle
bli erstattet af de korrekte leksika (eller fjernet).:

- LEXICON Z2+rPZ # ;

Det kan være flere grunder hertil:
* de er simpelthen ikke definerede
* det korrekte leksikon er ikke tilføjet, og lexc tar suffikset istedenfor
* det er en skrivefejl i leksikonnavnet

## DERIVATIONSMORFEMERNES LEKSIKA

Her kommer en liste over de ulike leksika.
Nogle af dem er dokumenterede, andre ikke.

* LEXICON GEMS  = Gennemgangsleksikon til nominer der geminerer til stop-lyd ved fleksion, fx meeqqap
* 0:^GEMS Z1Zmorf ; 

* LEXICON GEMC  = Gennemgangsleksikon til nominer der geminerer til kontinuant-lyd ved fleksion, fx nannup
* 0:^GEMC Z1Zmorf ; 

* LEXICON Z1Zmorf  Derivationsmorfemer til nominer, viser til **tp** og giver derefter nn-derivationer
	*  tp ; 
	* +ALUK+Der/nn+INNAQ+Der/nn:%>%TRUNCaluinnaq tup- ; 

- LEXICON Z1VZmorf  Derivationsmorfemer til nominer, der ender med vokal a, i, u 20200916 NN
	 -  tpV ;   !PL20221117 nyt fortsættelseslex

* LEXICON Z1eqZmorf  Derivationsmorfemer til nominer på seq og leq
	  * Z1eqZ ; 
... osv.

* LEXICON nuliaqmorf  derivationsmorfemer til typen *nuliaq*

* LEXICON SEQgemin  derivationsmorfemer til nominer

* LEXICON ZseqZ  qalaseq

* LEXICON SIKgemin  derivationsmorfemer til nominer som ikusik:iku

* LEXICON Z1+le_UdenPossessumZmorf  derivationsmorfemer til nominer som kalaaleq, der ikke kan tage possessum

* LEXICON Z1eZmorf  derivationsmorfemer til nominer på udlydende schwa

* LEXICON Z1tipeZmorf  derivationsmorfemer til nominer på udlydende schwa

* LEXICON Z1nnguaqZmorf  derivationsmorfemer til nominer på nnguaq

* LEXICON Z1iZmorf  derivationsmorfemer til nominer med strong i

* LEXICON Z1iqZmorf  derivationsmorfemer til nominer med strong i som qimmeq

* LEXICON Z1+tZmorf  derivationsmorfemer til nominer som pisataq og nivaataq !PL20210519 retableret og stammer fjernet fra GEMS

* LEXICON tptmorf  

* LEXICON ZtiZmorf  taggit

* LEXICON ZkkutZmorf  derivativer til typen saki og sakikkut

* LEXICON Z2Zmorf  nominer som erneq

* LEXICON Z2kZmorf  nominer som eqik

* LEXICON Z2veqZmorf  derivationsmorfemer til aaveq-typen

* LEXICON Z2i2Zmorf  derivationsmorfemer til aleq, ateq

* LEXICON Z2tupeqZmorf  derivationsmorfemer tupeq

* LEXICON Z2-Zmorf  derivationsmorfemer til tup- paa K. Jf. Z2-qZmorf

* LEXICON Z2-uukZmorf  derivationsmorfemer til tup- paa K. Jf. Z2-qZmorf

* LEXICON Z2-qZmorf  Nyt leksikon til tup- paa Q 7.9.2007 for at haandtere forskelle som ..fiksuaq vs. ..aqsuaq

* LEXICON Z2-eqZmorf  Nyt leksikon til tup-2, magen til Z2-qZmorf, men har andre fleksioner til tulleq og qiterleq

* LEXICON Z2aqZmorf  derivationsmorfemer til nominer

* LEXICON Z2+lZmorf  derivationsmorfemer til nominer korrigeret februar 2017 med hensyn til additive og recessive morfemer.

gennemgangskatalog for up-stammer, der kræver replaciv sandhi

* LEXICON Z2+rZmorf  derivationsmorfemer til nominer

* LEXICON Z2-PZmorf  derivationsmorfemer til tup-nominer pluralis tantum

* LEXICON ZoqsZmorf2  

* LEXICON ZoqseZmorf  

* LEXICON ZoqsieZmorf  

* LEXICON Num1morf  nyt katalog tilføjet livm 20170505

* LEXICON Num2morf  

* LEXICON Num3morf  nyt katalog livm 20170505

* LEXICON Num4morf  nyt katalog livm 20170505

* LEXICON Num6morf  nyt katalog livm 20170505

* LEXICON Num6likmorf  nyt katalog livm 20170505

* LEXICON Num10morf  nyt katalog livm 20170505

* LEXICON Numamorf  nyt katalog livm 20170810

* LEXICON Numumorf  nyt katalog til hunnoruju som før fejlagtigt gik i pluralisformen til Numtmorf PL20200421

* LEXICON Numimorf  nyt katalog livm 20170810

* LEXICON Numemorf  nyt katalog livm 20170810: danske numeralier tre, fire, otte, ellee, tyve, tredive, fyrre, hundrede

* LEXICON NumCmorf  nyt katalog livm 20170917

* LEXICON Numtmorf  foorut

* LEXICON IVschwa_stem  angeqi

* LEXICON IVschwa   Derivativer der tilfoejes intransitive verber på schwa

* LEXICON IVschwa2   Derivativer der tilfoejes intransitive verber på schwa

* LEXICON IV_r_stem  aallar, oqar

* LEXICON IV_r   

* LEXICON IV_r_agentiv  PL 20180726 type atuarpoq

* LEXICON IV_r2 

* LEXICON IV_k_stem   

* LEXICON IV_k_agentiv  PL 20210111 type allappoq

* LEXICON IV_k  

* LEXICON IV_k2   

* LEXICON IV_long_stem   orraajusaar, orseruloor, paamaar

* LEXICON IV_long   

* LEXICON IV_long2 

* LEXICON IV_voq_stem   overgenererer dette for meget? Og er k også mulig? Qasoq

* LEXICON IV_voq 

* LEXICON IV_voq_agentiv  PL 20180726 type takuvoq

* LEXICON IV_voq2   skal få 200 medl.

* LEXICON XIi_voqXmorf_stem   som tallivoq

* LEXICON XIi_voqXmorf  

* LEXICON XIi_voqX_agentiv  PL20210225 type utaqqivoq - jf. XIi_voqXmorf_stem for non-agentive

* LEXICON XIi_voqXmorf2  

* LEXICON XIiXmorf_stem   type tarrarippoq

* LEXICON XIiXmorf 

* LEXICON XIiXmorf2   skal få 200 medl.

* LEXICON XIiXmorf_UdenTIP   som XIiXmorf, men uden TIP for at blokere rekursive TIP

* LEXICON XIirXmorf_stem   type taseqqerpoq

* LEXICON XIirXmorf   til iR såsom *er*

* LEXICON XIirXmorf2   til iR såsom *er*

* LEXICON XItX  type imaappoq, kaavippoq (NB ikke kâvigpoĸ, men kâvípoĸ)

* LEXICON XItX2  

* LEXICON XIitX_stem   type katerippoq og alt på TIP

* LEXICON XIitX  

* LEXICON XIitX2  

* LEXICON XIuteXmorf   skal få 200 medl. type angumeqquppoq

* LEXICON XIuteXmorf2   skal få 200 medl.

* LEXICON XIi_uteXmorf   som oqallipput

* LEXICON XIi_uteXmorf2   som oqallipput

* LEXICON XItsXmorf_stem   type ippajaappoq

* LEXICON XItsXmorf  

* LEXICON XItsXmorf2  

PL 20180718. Følgende er et særligt lexicon til ip i stedet for tidligere LEXICON IV_k_stem med default flex-iv, der producerede enorm overgenerering. Samtidig er transitiv ip flyttet fra TV til flex-tv, men der skal nok tilføjes enkelte transitive ip som upper-under efterhånden som de dokumenteres.

* LEXICON TV  Forudsættes tagget via HTR

* LEXICON TV_UdenTIP  Forudsættes tagget via HTR

* LEXICON TV_vaa  Forudsættes tagget via HTR

* LEXICON XTuteXmorf  type oqalungusiuppaa. Forudsættes tagget via HTR

* LEXICON XTiuteXmorf  type annippaa, pitsippaa Forudsættes tagget via HTR

* LEXICON XTirXmorf   til stammer med ir

* LEXICON TVi_vaa  tuni forudsættes Gram-tagget via HTR

* LEXICON TVschwa  Forudsættes Gram-tagget via HTR

* LEXICON XTtX  nakappaa nunguppaa anippaa Forudsætter Gram-tag fra HTR

* LEXICON flex-iv  

* LEXICON flex-iv2  

* LEXICON flex-iv_long  

* LEXICON flex-iv_long2  

* LEXICON flex-iv_voq  

* LEXICON flex-iv_voq2  

* LEXICON pi_flex-iv_refl  Et særligt lex til pivaa + Refl for at begrænse overgenerering. Udkommenteringer må fjernes efterhånden som formerne faktisk dokumenteres

* LEXICON pi_flex-iv_voq  et saerligt lexicon til dummy-pi, som ikke får derivationer

* LEXICON pi_flex-iv_voq3  et saerligt lexicon til dummy-pi, som ikke får derivationer

* LEXICON su_flex-iv_voq  et saerligt lexicon til dummy-su, som ikke får derivationer

* LEXICON su_flex-iv_voq3  et saerligt lexicon til dummy-su, som ikke får derivationer

* LEXICON XIiX  

* LEXICON XIiX2  

* LEXICON XIiPX  

* LEXICON XIiPX2  

* LEXICON XIiPX3  

* LEXICON XIiX_fleksiver  

* LEXICON XIiX_fleksiver2  

* LEXICON XIiX_fleksiver3  

* LEXICON XIiPX_fleksiver  

* LEXICON XIiPX_fleksiver3  

* LEXICON XItsX  

* LEXICON XItsX2  

* LEXICON XItsX3  

* LEXICON gallar-iv  

* LEXICON gallar-iv2  

* LEXICON gallar-iv3  

* LEXICON flex-iv_ssa  

* LEXICON flex-iv_ssa2  

* LEXICON flex-iv_qina 

* LEXICON flex-iv_qina2  nyt liv 20170428. Kan ikke viderederiveres og kan danne sammentrukne former.

* LEXICON flex-iv_nngit_stem   

* LEXICON flex-iv_nngit_k   

* LEXICON flex-iv_nngit  

* LEXICON flex-iv_nngit2  

* LEXICON flex-iv_schwa  

* LEXICON flex-iv_schwa2  

* LEXICON XIgujoqX  

* LEXICON XIgujoqX3  

* LEXICON XImioqX  narratologisk stil som i *nikutsinnguarsinnarmioq*

* LEXICON XImioqX2  narratologisk stil som i *nikutsinnguarsinnarmioq*

* LEXICON flex-iv_ledsagemaade  

* LEXICON flex-iv_ledsagemaade2  

* LEXICON flex-tv  

* LEXICON flex-tv_ute  !pga. titartaaTInnga

* LEXICON flex-itv  !!Ny gennemgang 20200106 til assibilerende refl. som ikioqqoreersut

* LEXICON flex-tv2  

* LEXICON flex-tv2_ute  

* LEXICON flex-tv_NIQ_AJUR  !PL20230706 kopi af flex-tv2 men uden derivativer

* LEXICON flex-tv_fleksiver 

* LEXICON flex-tv_fleksiver2  NY 20100227. Til verber, der ikke maa viderederiveres (fx +NIR+Der/vv)

* LEXICON flex-tvP_fleksiver 

* LEXICON flex-tvP_fleksiver2  NY 20170510. Til verber, der ikke maa viderederiveres (fx +NIR+Der/vv)

* LEXICON flex-tv_it  

* LEXICON flex-tv_it2  

* LEXICON gallar-tv  

* LEXICON gallar-tv2  

* LEXICON gallar-tvP 

* LEXICON gallar-tvP2  tilføjet 20170526. Er det overflødigt?

* LEXICON pi_flex-tv_vaa 

* LEXICON pi_flex-tv_vaa2  fleksiver helt uden derivativer specielt til pi-

* LEXICON flex-tv_KunCont  fleksiver helt uden derivativer specielt til TASSAA=GUNNAIR

* LEXICON su_flex-tv_vaa 

* LEXICON su_flex-tv_vaa2  fleksiver helt uden derivativer specielt til pi-

* LEXICON flex-tv_vaa  

* LEXICON flex-tv_vaa2  

* LEXICON flex-tv_ssa  !pl20210729 nyt LEX for at tillade -ssua- isf. -ssava-

* LEXICON flex-tv_ssa2  

* LEXICON flex-tvP_vaa  

* LEXICON flex-tvP_vaa2  

* LEXICON XTPX  

* LEXICON XTPX2  

* LEXICON XTuteX  

* LEXICON XTuteX2  

* LEXICON XTutePX  

* LEXICON XTutePX2  

* LEXICON flex-tv_nngit  

* LEXICON flex-tv_nngit2  

* LEXICON flex-tv_schwa  

* LEXICON flex-tv_schwa2  

* LEXICON XTPX_nngit  

* LEXICON XTPX_nngit2  

* LEXICON XTPX_schwa  

* LEXICON XTPX_schwa2  

Et særligt leksikon til tilhæng som RIANNGUAR+Der/vv

* LEXICON XTgujaaX  

* LEXICON XTgujaaX2  

* LEXICON tp_uden_derivativer  
| --- 
| --- 
| --- 
| --- 

* LEXICON tp  obs 20200623: fleksionsmorfemgrænse er %< og ikke %>
| --- 

| --- 
| --- 
| --- 
| --- 

* LEXICON tpV  obs 20200623: fleksionsmorfemgrænse er %< og ikke %> 
| --- 

| --- 
| --- 
| --- 
| --- 

* LEXICON tp_Gram/Ord  obs 20200623: fleksionsmorfemgrænse er %< og ikke %> Ny PL20220522 kun til ordenstal

| --- 
| --- 
| --- 
| --- 

* LEXICON Z1+tZ   !PL20210519 retableret og stammer fjernet fra GEMS

* LEXICON tp_possessum3   Til "stammer" som inuup-normu

* LEXICON nuliaq  
| --- 
| --- 
| --- 
| --- 

* LEXICON tp_speciel  specialitet for at haandtere diatese ved NIQ=SSAQ
| --- 
| --- 
| --- 
| --- 

* LEXICON Z1eZ  
| --- 

* LEXICON Z1tipeZ  

* LEXICON Z1nnguaqZ  
| --- 

* LEXICON Z1nnguaqSZ  
| --- 

* LEXICON tpP  

* LEXICON tip  kuulti
| --- 
| --- 
| --- 

* LEXICON tiqp  qimmeq
| --- 
| --- 
| --- 

* LEXICON tpt  

* LEXICON tptP  

* LEXICON Z1iZ  taggit

* LEXICON ZsikZ  170306 til ikusik og kiasik

* LEXICON Z1+le_UdenPossessumZ  

* LEXICON tup-uuk  nuuk, kuuk
| --- 
| --- 
| --- 
| ---
| ---  
| ---
| ---
| --- 
| --- 

* LEXICON tup-  
| --- 
| --- 
| ---
| ---  
| ---
| ---  
| --- 
| --- 

* LEXICON tup-2  
| --- 
| --- 
| --- 
| ---
| --- 
| ---
| --- 
| --- 
| --- 

* LEXICON GIIT  
| --- 
| --- 
| ---
| --- 
| ---
| --- 
| --- 
| --- 

* LEXICON Z2aqZ  
| --- 

* LEXICON UGALUAQ  

* LEXICON GEGALUAQ  
| --- 

* LEXICON Z2+lZ  

* LEXICON tup  
| --- 
| --- 
| ---
| --- 
| ---
| --- 
| --- 
| --- 

* LEXICON tup_speciel  Kun til brug for NIQ som passiv ved transitive stammer
| --- 
| --- 
| ---
| --- 
| ---
| --- 
| --- 
| --- 

* LEXICON tup_k  
| --- 
| --- 
| --- 
| --- 
| --- 
| ---
| --- 
| ---
| --- 
| ---
| --- 
| ---
| --- 
| --- 
| --- 
| --- 
| --- 

* LEXICON tup_k_reduceret  nalik og assik

| --- 
| --- 

* LEXICON Z2+rZ  
| --- 
| --- 
| ---
| --- 
| ---
| --- 
| --- 
| --- 
| --- 

* LEXICON Z2veqZ  iliveq:ili

* LEXICON Z2i2Z  aleq, ateq

* LEXICON Z2tupeqZ  tupeq

* LEXICON Zappellativ_possessumZ   ulloqeqqa

* LEXICON LokVb  

* LEXICON LokAeq  

* LEXICON TrmVb  

* LEXICON AblVb  

* LEXICON InsVb  

* LEXICON AeqVb  

* LEXICON ViaVb  

* LEXICON PronViaVb  

* LEXICON part  

* LEXICON timepart  nyt leksikon til tidspartiker, der kan viderederiveres (ullumiummat)

* LEXICON oqq  

* LEXICON oqq_q   imaattoq

* LEXICON conj  

* LEXICON adv_m 

* LEXICON adv  

* LEXICON K_VOK  nyt leksion til enklitisk ARAQ og NNGUAQ efter verbal fleksion -vakkit

* LEXICON K_TUQ  nyt leksion til enklitisk TUQ for at undgå overgenerering

* LEXICON K_TUQ_plur  nyt leksion til enklitisk TUQ for at undgå overgenerering

* LEXICON Krestr  

* LEXICON K  

* LEXICON restricted_indholds-K  = klitika som kun bruges til pronomen, proprium og partikel.

* LEXICON indholds-K  20170601 livm tilføjet = mellem morfemer

* LEXICON K_plur  20170601 livm tilføjet = mellem morfemer

* LEXICON ZoqsZ  landsfoged

* LEXICON ZoqseZ  landslaege

* LEXICON ZoqsieZ  linolie

* LEXICON ZkkutZ  kkut og giit

* LEXICON Num1  

I Num2 til Num10 er flagging af NNGUR C-et pga. klokken

* LEXICON Num2  

* LEXICON Num3  

* LEXICON Num4  

* LEXICON Num6  

* LEXICON Num6lik  

* LEXICON Num10  

* LEXICON Numa  

* LEXICON Numu   PL20200421 nyt LEX til hunnoruju

* LEXICON Numi  

* LEXICON Nume  

* LEXICON NumC  loan numerals like fam

* LEXICON Numt  loan numerals ending in -t like foorut

* LEXICON Num2Ord  

* LEXICON Num3Ord  

* LEXICON Num6Ord  

* LEXICON Num10Ord  

* LEXICON Naal  

* LEXICON Naalsuf  livm 20171211 tilføjet pluralisbøjning

* LEXICON web  

* LEXICON Gaq  transitive stammer med a, u og schwa som stammevokal

* LEXICON iGaq  transitive r-stammer med i som stammevokal NY PL 20180416

* LEXICON GaqP  

* LEXICON iGaqP  transitive r-stammer med i som stammevokal NY PL 20230916

* LEXICON Taq  passivt nomen af transitive stammer på k

* LEXICON iTaq  passivt nomen af transitive stammer på k med vokal med strong i

* LEXICON TaqP  

* LEXICON Saq   passivt nomen af transitive stammer på vokal PL revision 20180409

* LEXICON iSaq  passivt nomen af transitive stammer på vokal med strong i 

* LEXICON SaqP  

* LEXICON Saq_schwa  gennemgangsleksikon for schwa-stammer uden derivativer

* LEXICON Saq_schwaP  gennemgangsleksikon for schwa-stammer uden derivativer - pluralis tantum

* LEXICON uteSaqP   passivt nomen af transitive stammer med UTE

* LEXICON nngisaq   passivt nomen af transitive stammer på NNGIT

* LEXICON nngisaqP   passivt nomen af transitive pluralis tantum stammer på NNGITLEXICON prae understreg

* LEXICON HTR_V_SAQ_nnip  20100630 vokalstammer som asavaa med HTR på NNIP (asannippoq, takunnippoq)

* LEXICON HTR_V_SAQ_si  20100630 vokalstammer som matuaa med HTR på SI (matusivoq)

* LEXICON HTR_V_SAQ_i  20171022 vokalstammer som pitsaalivaa med HTR på I (pitsaaliivoq)

* LEXICON HTR_V_SAQ_i_P  20171022 vokalstammer i pluralis med HTR på I (pitsaaliivoq)

* LEXICON HTR_V_SAQ_ller   (aavaa - aasaq - aallerpoq)

* LEXICON HTR_i_SAQ_nnip  20100630 vokalstammer på i med HTR på NNIP (nerivaa - nerisaq - nerinnippoq)

* LEXICON HTR_i_SAQ_si  20100630 vokalstammer på i med HTR på SI (tunivaa - tunisaq - tunisivoq)

* LEXICON HTR_UTE_SSAQ_ssi   201000929 gennemgangsleksikon for ute stammer.(kingornuppaa - kingornussivoq - kingornussaq)

* LEXICON HTR_UTE_SSAQ_tsi   20190309 ute-stammer på HTR=tsi som sioqquppaa

* LEXICON HTR_iUTE_SSAQ_ssi   201000929 gennemgangsleksikon for fusionerede ute stammer med assibilering.(pitsippaa, annippaa). Den morfologiske usikkerhed meget generel ved disse stammer, så såvel t-stammers struktur som ute-stammers ditto medtaget

* LEXICON HTR_schwa_SAQ_nnip   201000929 gennemgangsleksikon for schwa stammer.

* LEXICON HTR_schwa_SAQ_nnip_P   201000929 gennemgangsleksikon for schwa stammer.

* LEXICON HTR_schwa_SAQ_si   gennemgangsleksikon for schwa stammer. (ilisarsivoq)

* LEXICON HTR_C_TAQ_si   (dvs. konsonantstammer men ikke med *r* (kingornuppaa - kingornussivoq - kingornutaq)

* LEXICON HTR_C_TAQ_si_P   20100406 gennemgangsleksikon for pluralis tantum stammer med på ir-. (tallimakkaaqqippai - tallimakkaaqqitat - ??)

* LEXICON HTR_k_TAQ_i_P   20180430 pluralis tantum stammer som kitserluppai

* LEXICON HTR_r_TAQ_si   (konsonantstammer med *r* (toqqorpaa - toqqorsivoq - toqqortaq)

* LEXICON HTR_C_TAQ_nnip   (malippaa --> malinnippoq)

* LEXICON HTR_C_TAQ_i   20100406 gennemgangsleksikon for t-stammer og k-stammer

* LEXICON HTR_C_TAQ_tsi  20101203 t-stammer som toqup med HTR på TSI (nipangersippaa - nipangersitaq - nipangersitsivoq)

* LEXICON HTR_C_TAQ_tsi_P  20101203 t-stammer som toqup med HTR på TSI (nipangersippaa - nipangersitaq - nipangersitsivoq)

* LEXICON HTR_iC_TAQ_i   (stammer på iC)

* LEXICON HTR_iC_TAQ_si  20101203 t-stammer som sullip med HTR på SI (sullippaa - sullitaq - sullissivoq)

* LEXICON HTR_iC_TAQ_tsi  20101203 t-stammer som sullip med HTR på TSI (nangippaa - nangitaq - nangitsivoq)

* LEXICON UDEN_HTR_r_GAQ   20180722 konsonantstammer som ilinniar uden HTR

* LEXICON UDEN_HTR_r_TAQ   20190109 nassarpaa uden HTR

* LEXICON UDEN_HTR_k_TAQ   20180722 konsonantstammer som sorsup uden HTR

* LEXICON UDEN_HTR_C_TAQ   konsonantstammer som alapernaap

* LEXICON UDEN_HTR_k_GAQ   PL20210201 allappaa

* LEXICON UDEN_HTR_V_SAQ    vokalstammer som nakkaavaa uden HTR

* LEXICON UDEN_HTR_iV_SAQ    vokalstammer som nakkaavaa uden HTR

* LEXICON UDEN_HTR_schwa_SAQ    schwastammer som anneraa - amigaraa uden HTR

* LEXICON HTR_r_GAQ_i   201000630 konsonantstammer som arsaartorpaa med HTR på I (arsaartuivoq)

* LEXICON HTR_ir_GAQ_i   20161016 assibilerende konsonantstammer som aallarnerpaa med HTR i (aallarniivoq)

* LEXICON HTR_r_GAQ_ller   (ujarpaa - ujagaq - ujarlerpoq)

* LEXICON HTR_ir_GAQ_si   (qilerutaarpaa) IR

* LEXICON HTR_r_GAQ_si   (imaarpaa - imaarsivoq - imaagaq)

* LEXICON HTR_longV_GAQ_i   20101216 særligt leksikon til lange vokaler som -oor (tusaqqoorpaa, tusaqquuivoq)

* LEXICON HTR_longV_GAQ_addi   20101125 særligt leksikon til lange vokaler som -saar (naammattusaarivoq)

* LEXICON HTR_longV_GAQ_si   til lange vokaler som -naar (ikinaarsivoq)

* LEXICON HTR_longi_GAQ_nnip   20101125 særligt leksikon til lange vokaler som -saar (arsaarinnippoq)

flex-tv ;

* LEXICON HTR_k_GAQ_i  til de faa stammer med fusionerende passivt nomen som atornerlugaq, atornerluppaa, atornerluivoq

* LEXICON N_Loan_ACR_V  = bøjelige acronymer med appellativ-betydning som *en BMW*, der skal have bindestreg, men ikke i før videredannelse 

* LEXICON N_Loan_ACR_C  = bøjelige acronymer med appellativ-betydning som *en SMS*, der skal have bindestreg før videredannelse 

* LEXICON N_Loan  nominal loanwords ending in consonants

* LEXICON N_Loan_bindestreg  låneord, der skal have bindestreg som Ph.d.

Ord som PFAS

* LEXICON N_Loan_Num  som bør have bindestreg *omega% 3*

* LEXICON N_Loan_GEM_s  test på ordet 'gas'

* LEXICON N_Loan_GEM  nominal loanwords with geminating consonant

* LEXICON N_Loan_t  nominal loanwords ending in -t

* LEXICON N_Loan_um  nominal loanwords ending in -um

* LEXICON N_Loan_morf  nominal loanwords ending in vowels

* LEXICON N_Loan_e  nominal loanwords ending in e

* LEXICON N_Loan_o  nominal loanwords ending in o

* LEXICON N_Loan_é  café

* LEXICON N_Loan_V  nominal loanwords ending in a, u, y, æ, ø, å

* LEXICON N_Loan_i  nominal loanwords ending in i

* LEXICON N_Loan_logi  nominal loanwords ending in logi pl20201104 for at tvinge et ekstra i ind i teknologi+Imik modsat teknolog+Imik (via N_Loan_i)

* LEXICON N_Loan_ie  nominal loanwords ending in -ie

* LEXICON N_Loan_Adj  adjective loanwords

* LEXICON N_Loan_Adj_e  adjective loanwords

* LEXICON N_Loan_Unit_e  loanwords ending in -e, semantic: unit

* LEXICON N_Loan_Unit  loanwords ending in consonants, semantic: unit

* LEXICON V_Loan  verbal intransitive loanwords

* LEXICON V_Loan_tr  verbal transitive loanwords

Nye gennemgangsleksika specifikt for +UTE+Der/vv tilføjet 20180118 (PL)

Nye gennemgangsleksika specifikt for +UTE+Der/vv tilføjet 20180928 (PL)

Nye gennemgangsleksika specifikt for +UTE+Der/vv tilføjet 20180928 (PL)

Nye gennemgangsleksika for TAR med følgende morfemer

Gennemgangsleksikon for TAR m. fl.

Kopi af IV-mod_C bortset fra default 

Gennemgangsleksikon for TAR m. fl.

Gennemgangsleksikon for TAR m. fl. efter /i/ f.eks. GUMALLIR GUNNAIR LIR LLAQQIP PASIP QQAMMIR QQIP RIIR UMMIR VIP

Gennemgangsleksikon for TAR m. fl. efter /i/ f.eks. GUMALLIR GUNNAIR LIR LLAQQIP PASIP QQAMMIR QQIP RIIR UMMIR VIP

Gennemgangsleksikon for TAR m. fl.

Gennemgangsleksikon for TAR m. fl.

Gennemgangsleksikon for TAR m. fl. !tilføjet 20170501 !ikke til QE+Der/vv som kun kan få +NIR

Gennemgangsleksikon for TAR m. fl. !tilføjet 20170501 !ikke til QE+Der/vv som kun kan få +NIR

Gennemgangsleksikon for TAR m. fl. !tilføjet 20170501 !til QE+Der/vv som kun kan få +NIR

Gennemgangsleksikon for TAR m. fl. efter LAAR

Gennemgangsleksikon for TAR m. fl. efter NAR+Der/vv

Gennemgangsleksikon for TAR m. fl. !tilføjet 20170501

Gennemgangsleksikon for TAR m. fl.

Gennemgangsleksikon for TAR m. fl.

Gennemgangsleksikon RUJUUR+Der/vv

Gennemgangsleksikon RUJUUR+Der/vv

Gennemgangsleksikon for TAR m. fl. !tilføjet 20170501

efter GUMALLIR GUNNAIR LIR QQAMMIR RIIR UMMIR etc. !Ny default + post_-lexica PL 20180416

TIR og TITIR

Udkommenterede lexica - Flyttet til derivations-inflections.bak20200319 på Pers Mac

| --- 
| --- 

* LEXICON Z1+qaZ  !### udkommentererede gemineringsleksika, erstattet af GEMS (stop, klusil) og GEMC (kontinuant)

* LEXICON ZsaqZ  

* LEXICON Z1+koZ  

* LEXICON Z1+laZ  

* LEXICON Z1+loZ  

* LEXICON Z1+naZ  

* LEXICON Z1+ngeZ  iviangeq, ivianngit

* LEXICON Z1+ssZmorf  derivationsmorfemer til nominer

* LEXICON Z1+niuZmorf  derivationsmorfemer til niu

* LEXICON Z1+maZmorf  derivationsmorfemer til nominer som isuma

* LEXICON Z1+meZmorf  derivationsmorfemer til nominer

* LEXICON Z1+koZmorf  derivationsmorfemer til nominer

* LEXICON ZsaqZmorf  derivationsmorfemer til nominer

* LEXICON Z1+qaZmorf  derivationsmorfemer til nominer

* LEXICON Z1+laZmorf  derivationsmorfemer til nominer

* LEXICON Z1+loZmorf  derivationsmorfemer til nominer som nuloq

* LEXICON Z1+naZmorf  derivationsmorfemer til nominer med gemination af n

* LEXICON Z1+ngeZmorf  typen iviangeq+Der/nn:ivian

* LEXICON Z1+ssZ  

* LEXICON Z1+niuZ  

* LEXICON Z1+maZ  

* LEXICON Z1+meZ  

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/derivations-inflections.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/affixes/derivations-inflections.lexc)</small>

---


Inflection and derivation.

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/numerals.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/affixes/numerals.lexc)</small>

---

# Propriernes morfologi i grønlandsk

* LEXICON ZxxxV   steder og navne på vokal som ikke er i FST'en

* LEXICON ZxxxC   steder og navne på konsonant som ikke er i FST'en

Navnelexikon er i ateq-kal-lex.txt.

* LEXICON Z1geoSZ   Igaliku og Narsaq
* LEXICON Z1geoSZ-suf   SUB

* LEXICON Z1geoPZ   Paamiut

* Sisimiut examples:*
* *Sisimiut:* `Sisimiut+Prop+Abs+Pl`
* *Sisimiut:* `Sisimiut+Prop+Rel+Pl`
* *Sisimiunut:* `Sisimiut+Prop+Trm+Pl`
* *Sisimiunit:* `Sisimiut+Prop+Abl+Pl`
* *Sisimiuniit:* `Sisimiut+Prop+Abl+Pl`
* *Sisimiuni:* `Sisimiut+Prop+Lok+Pl`

* LEXICON Z1geo_nnguaqPZ   Kangilinnguit NY 20100319 (PL)

* LEXICON Z1geo_nnguaqZ    Quassunnguaq NY 20100410 (PL)

* LEXICON Z1geo_tsSmorf  Kangerluarsoruseq

* LEXICON Z1geo+ssPZ   Ilulissat

* LEXICON Z1geo_oqsZ   Finland

* LEXICON Z1geo_oqsetZmorf   Atlanterhavet

* LEXICON Z1geo_oqseZ   Thule

* LEXICON Z2-geoSZ   Ikerasaarsuk og Iqaluit

* LEXICON Z2-geoSZ_TUQAQ   Nuutoqaq

* LEXICON Z2+lgeoSZ   Nanortalik:Nanorta

* LEXICON Z2-geo_uukSZ   Nuuk

* LEXICON Z2-geo_specielSZ   Qinngorput – Qinngorpummi, Qinngorpumi

* LEXICON Z2-geoqPZ   Saqqarliit

* LEXICON Z2-geolikPZ   Kapisillit:Kapisi

* LEXICON Z2geo_aqSZ   Nuussuaq

Et særligt lexicon til literals i citationstegn med placeholder QuotedHyphen (står i acronyms.lexc)

:- Z2-ateqZ-suf ;     !SUB

Tidligere Z2-ateqZmorf

Nyt lexicon 20180615 Z2suaq_ateqZmorf

* LEXICON ZpossessumZ   !Kalaallit% Nunaat flyttet til ZgeopossessumSZ

* LEXICON ZpossessumSZ   Nuup Kommunea

* LEXICON ZpossessumPZ   

* LEXICON ZgeopossessumSZ   !Kalaallit% Nunaat flyttet til ZgeopossessumPZ

* LEXICON ZgeopossessumPZ   Kalaallit% Nunaat

* LEXICON ZPropKKUTZ  kopieret fra ZkkutZ. Det meste af derivation udkommenteret, da usandsynlig ved proprier

* LEXICON Z1Prop+qaZ  kopieret ind fra Z1+qaZ (tp), hvis størstedel er slettet her

* LEXICON Proptp  

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/propernouns.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/affixes/propernouns.lexc)</small>

---



# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/affixes/symbols.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/affixes/symbols.lexc)</small>

---

# Greenlandic morphological analyser

Fil for at generere de centrale morfologiske processer i vor grønlandske analysator

# Multicharacter symbols

* **AA+** = præfiks
* **TA+** = præfiks

## Tags for POS (primary tags)

### Main Word Classes
* **+N** = Noun
* **+V** = Verb
* **+Pali** = Particle-like - partikellignende
* **+Conj** = Conjunction
* **+Adv** = Adverb
* **+Interj** = Interjection
* **+Pron** = Pronoun
* **+Prop** = Propernoun
* **+Num** = Numeral
* **+Symbol** = independent symbols in the text stream, like £, €, ©

## Secondary tags

### Tags for Verbs
* **+Gram/IV** = Intransitive Verb !PL 20180319 ny formalisme gennemført livm 20180324
* **+Gram/TV** = Transitive Verb !PL 20180319 ny formalisme gennemført livm 20180324
* **+Gram/HV** = Non-marked agentive Verb (used as Half-transitive)
* **+Gram/Db** = Double-transitive Verb. PL tilføjet 20180319
* **+Gram/Exclm** = Exclamation !Flyttet fra primære tags 20180420 PL
* **+Gram/Upersonlig** = upersonlig CONT med NAR+3Sg til højre 

### Tags for Pronouns
* **+Gram/Int** = Interrogative Pronoun
* **+Gram/Pers** = Personal Pronoun
* **+Gram/Coref** = Reflexive Pronoun
* **+Gram/Indef** = Indefinitive Pronoun

### Tags for Other Word Classes
* **+Gram/Dem** = Demonstative pronoun, demonstrative adverb or demonstrative interjection
* **+Gram/Cong** = Various Pronoun, eg. tamaq, kisi (personkongruensdeklination)
* **+Gram/Abbr** = Abbreviation
* **+Gram/ACR** = Acronyms
* **+Gram/Adj** = Adjektiver optaget direkte inkl. ubøjet anvendelse før kerne

### Semantics
anatomical. Adskiller qiteq+Sem/an+3SgPoss = qitia fra qiteq+3SgPoss = qeqqa
* **+Sem/Be**  <fn:Be> !#náipoĸ
* **+Sem/dur** tid som periode ulloq=dag/day
* **+Sem/event** fx Avannaata Qimussersua
* **+Sem/Fem** Forsøg med femininum sml. Sem/Mask
* **+Sem/FirstName** = Attributive
* **+Sem/Geo** = Geographical Propernoun
* **+Sem/H** = Menneske
* **+Sem/HH** = Organisationer
* **+Sem/Hprof** = Menneske erhverv
* **+Sem/Hum** = Non-geographical Propernoun
* **+Sem/LastName**  Efternavne
* **+Sem/Mailadresse** tag til adresser af typen cccc@cccc.cc
* **+Sem/Mask** Forsøg med en ny tag til fornavne af maskulinum
* **+Sem/ModeOfMovement** <fn:ModeOfmovement> !#nâgpoĸ
* **+Sem/Remove** = atserivoq mods. atsiivoq
* **+Sem/temp** tid som punkt ulloq=dato/date
* **+Sem/Time** = Temporal particle !The random adverbial 'phrases' like -riutaa -isaa etc.
* **+Sem/Unit** = Unit !Til besværlige låneord som 'time' etc., der optræder absolut
* **+Sem/Url** tag til adresser af typen www.ccc.cc
* **+Sem/misse** tag til at markere usikker possessor for misse

### Grammar
* **+Gram/Comp** = Composita !Særlig tag til NIQ ajor/saper/artor/nalu- konstruktioner ved transitive verber
* **+Gram/TUT_IP** = Composita !tag til at slette overtallige ip hvis der ikke står tut ved siden af
* **+Gram/Refl** = Reflexive, reciprocal or passive !asavoq
* **+Gram/Reci** = Reciprocal !naapipput
* **+Gram/Pass** = Passive !used when a derivational morpheme not explicitely denotes a passivisation, or when intransitive flexion changes an active verb into a passive
* **+Gram/PlurTant** = plurale tantum noun: ilaqutariit
* **+Gram/SingTant** = singulare tantum noun: sila
* **+Gram/Ord** = Ordinal number !pingajuat
* **+Gram/Hyb** = Følger hybriderne for at bestemme stederne hvor strengene kan klippes i to ord ved hybriderne
*__ +Gram/TransverbNIQ __ = NIQ-former med transitivt verbale egenskaber. PL20210417

### Derivation
* **+Der/Vok** = Vocative
* **+Der/Guess** = Guessed lemma and inflection which are not listed in the FST
* **+Der/Loan** = Guessed stems which are not listed in the FST and contain non-Greenlandic characters or non-Greenlandic final character
* **+Der/Unk** = Ukendt morfem !Ukendte morfemer i ellers analyserede stammer for at få rigtig lemmaanalyse, som orsoq+NNAP+nv+UNK+vn:orsunnattaaq
* **+Der/vv** = verb to verb
* **+Der/nn** = noun to noun
* **+Der/nv** = noun to verb
* **+Der/vn** = verb to noun
* **+Der/xx** = Follows the enclitic suffix TUQ to be able to distinguish TUQ+xx from the derivational morpheme TUQ+vn in CG: qanortoq
Citerede ordformer  jf. Kleinschmidt ^rpoĸ

### Dialect
* **+Dial/Ngr** = Northern dialect (such as ng for g; predictable dialectal changes might be dealt with in the postprosessor in stead)
* **+Dial/Sgr** = Southern dialect (such as VVC for VVCC), aneeqavoq (and not aneeqqavoq)
* **+Dial/Egr** = Eastern dialect
* **+Dial/Vgr** = Western dialect (such as rng for rn)

### Tags to mark loan word entries with a diverting orthography
That is, they need special treatment in e.g. speech syntesis.
* **+OLang/DAN** = Danish stem: profet
* **+OLang/ENG** = English stem: game
* **+OLang/DEU** = German stem: bier

### Orthograhy
* **+Orth/Arch** = Archaic language, (stem, morpheme, flexion, or sandhi): tikisimavoq, asallutigik, agpâ (for anípâ)
* **+Orth/Youth** = Youth language: asallutigu
* **+Orth/Alt** = Substandard language (hyphens among other things…): isissavoq, Qaanaaq-mut, fabrikki, poor’lu

### Usage/error
* **+Use/-Spell** = Do not include in speller
* **+Use/Hybrid** = For generating split hybrids. Should not be included in speller, analyser, or norm-generator
* **+Err/Sub** = Not authorized spelling: 2-imik
tag, vi ikke bruger, men som optræder i de delte filer

### Ekstra vedr. LG

## Tags for Inflection

### Numerus
* **+Sg** = Singularis
* **+Du** = Dualis
* **+Pl** = Pluralis

### Kasus
* **+Abs** = Absolutive
* **+Rel** = Relative
* **+Trm** = Terminalis
* **+Abl** = Ablative
* **+Lok** = Locative
* **+Aeq** = Aequalis
* **+Ins** = Instrumentalis
* **+Via** = Vialis

### Særlige 3./4. persons kasus med DivPron (Gram/Cong)
* **+Nom** = Nominative
* **+Akk** = Accusative

### Modus
* **+Ind** = Indicative
* **+Int** = Interrogative
* **+Imp** = Imperative
* **+Opt** = Optative
* **+Cau** = Causative
* **+Con** = Conditional
* **+Par** = Participium
* **+Cont** = Infinitive
* **+ContNeg** = Negated Infinitive
* **+IteCau** = Iterative (morphologically: Causative)

### Verb person-numerus
* **+1Sg** = Subject 1.person singular
* **+2Sg** = Subject 2.person singular
* **+3Sg** = Subject 3.person singular
* **+4Sg** = Subject 4.person singular
* **+1Pl** = Subject 1.person plural
* **+2Pl** = Subject 2.person plural
* **+3Pl** = Subject 3.person plural
* **+4Pl** = Subject 4.person plural
* **+1Du** = Subject 1.person dual
* **+2Du** = Subject 2.person dual
* **+3Du** = Subject 3.person dual
* **+4Du** = Subject 4.person dual

* **+1SgO** = Object 1.person singular
* **+2SgO** = Object 2.person singular
* **+3SgO** = Object 3.person singular
* **+4SgO** = Object 4.person singular
* **+1PlO** = Object 1.person plural
* **+2PlO** = Object 2.person plural
* **+3PlO** = Object 3.person plural
* **+4PlO** = Object 4.person plural
* **+1DuO** = Object 1.person dual
* **+2DuO** = Object 2.person dual
* **+3DuO** = Object 3.person dual
* **+4DuO** = Object 4.person dual

### Possesive tags - Possessormarkering i possessum
* **+1SgPoss** = Possessor 1.person singular
* **+2SgPoss** = Possessor 2.person singular
* **+3SgPoss** = Possessor 3.person singular
* **+4SgPoss** = Possessor 4.person singular
* **+1PlPoss** = Possessor 1.person plural
* **+2PlPoss** = Possessor 2.person plural
* **+3PlPoss** = Possessor 3.person plural
* **+4PlPoss** = Possessor 4.person plural

Flag diacritics til pluralis tantum subjekter

Flag diacritics til verber med kun pluralis i objekterne

Test af boolsk variabel til ad hoc blokeringer

Test af boolsk variabel til ad hoc blokering af Gram/Exclm. stems sættes Off og derivation On

Off-flag sættes i verbs på transitive verber med usandsynlig Refl. On-flag på taggen Gram/Refl i gennemgangslexica

Off-flag på verber som akuaa, der ikke må lave metatese på NIQ

Nyt flag 20211214 for at forebygge *taakkuunngitsoq og *taannaanngitsut

Off-flag på nominer, der SKAL opføre sig replacive som pilersaarusiorpoq og aqqusinniorpoq

Off-flag i nouns og Off-flag i der-inf  når TUR og TUGAQ ikke må assibileres og On-flag, når de skal assibileres. Også for at forebygge assibilering efter HTR på nnip

Flag specielt for at sikre additiv p-bøjning af ulloq i Trm

Flag til forebyggelse af manglende assibilering. P sættes i stem-filerne og C i der-infl

Ad hoc til test af alternativ flag diacritics ved præfikser. Husk også den udkommenterede linie 'Kingumoorutit ;' i LEXICON Root

Test af P- og D-flag til forebyggelse af rekusivitet ved TIP
og blokeres af 

Test 20210504 af P- og R-flag for at generere både takornariat og takornarissat+Err/Sub

Flags for loan words, which must not go to N+Abs+Sg without derivation.

# List of the so-called Greenlandic *tilhæng*, i.e., derivational affixes

* **+A** = Tilhæng
* **+AA** = Tilhæng
* **+AR** = Tilhæng
* **+AASIILLU** = Tilhæng
* **+AASIINNGUUQ** = Tilhæng
* **+AASIIT** = Tilhæng
* **+AASIT** = Tilhæng
* **+AAT** = Tilhæng
* **+ALAAQ** = Tilhæng
* **+ALAAR** = Tilhæng
* **+ALLAK** = Tilhæng
* **+ALLAP** = Tilhæng
* **+ALUK** = Tilhæng
* **+ALUP** = Tilhæng
* **+ARAQ** = Tilhæng
* **+ARSUK** = Tilhæng
* **+ARSUP** = Tilhæng
* **+ATAAR** = Tilhæng
* **+ATSIAQ** = Tilhæng
* **+GAJUK** = Tilhæng
* **+GAJUP** = Tilhæng
* **+GAJUUQ** = Tilhæng
* **+GALLAR** = Tilhæng
* **+GALUAQ** = Tilhæng
* **+GALUAR** = Tilhæng
* **+GALUP** = Tilhæng
* **+GALUTTUAQ** = Tilhæng
* **+GALUTTUAR** = Tilhæng
* **+GASAAQ** = Tilhæng
* **+GASAAR** = Tilhæng
* **+GASAP** = Tilhæng
* **+GASUAR** = Tilhæng
* **+GASUGE** = Tilhæng
* **+GASURE** = Tilhæng
* **+GE** = Tilhæng
* **+GI** = Tilhæng
* **+GIAQAR** = Tilhæng
* **+GIAR** = Tilhæng
* **+GIARTUAAR** = Tilhæng
* **+GIARTUR** = Tilhæng
* **+GIIAAQ** = Tilhæng
* **+GIIAAR** = Tilhæng
* **+GIIAAT** = Tilhæng
* **+GIILIP** = Tilhæng
* **+GIIP** = Tilhæng
* **+GIIT** = Tilhæng
* **+GIP** = Tilhæng
* **+GISSAAR** = Tilhæng
* **+GUMA** = Tilhæng
* **+GUMAAR** = Tilhæng
* **+GUMALLIR** = Tilhæng
* **+GUMINAALLI** = Tilhæng
* **+GUMINAR** = Tilhæng
* **+GUNAR** = Tilhæng
* **+GUNNAAR** = Tilhæng
* **+GUNNAIR** = Tilhæng
* **+GUNNAR** = Tilhæng
* **+GUNNARSI** = Tilhæng
* **+GUP** = Tilhæng
* **+GUSUP** = Tilhæng
* **+GUUQ** = Tilhæng
* **+GUURUNA** = Tilhæng
* **+HTR** = Tilhæng
* **+IAR** = Tilhæng
* **+ILATSI** = Tilhæng
* **+ILIQI** = Tilhæng
* **+INNANNGUAQ** = Tilhæng
* **+INNAQ** = Tilhæng
* **+INNAR** = Tilhæng
* **+INNARIAA** = Tilhæng
* **+IP** = Tilhæng
* **+IR** = Tilhæng
* **+IRNIAQ** = Tilhæng
* **+IRNIAR** = Tilhæng
* **+IRSIR** = Tilhæng
* **+IRUSSI** = Tilhæng
* **+IRUTE** = Tilhæng
* **+IRVIK** = Tilhæng
* **+ISAP** = Tilhæng
* **+ISUA** = Tilhæng
* **+IT** = Tilhæng
* **+JA** = Tilhæng
* **+JAALLU** = Tilhæng
* **+JAAR** = Tilhæng
* **+JURAR** = Tilhæng
* **+JURTUR** = Tilhæng
* **+KAA** = Tilhæng
* **+KAJAAQ** = Tilhæng
* **+KANNIQ** = Tilhæng
* **+KANNIR** = Tilhæng
* **+KAR** = Tilhæng
* **+KASIK** = Tilhæng
* **+KASIP** = Tilhæng
* **+KASSAK** = Tilhæng
* **+KASSAP** = Tilhæng
* **+KATAAR** = Tilhæng
* **+KATAP** = Tilhæng
* **+KILLI** = Tilhæng
* **+KIP** = Tilhæng
* **+KKAAQ** = Tilhæng
* **+KKAAR** = Tilhæng
* **+KKULUK** = Tilhæng
* **+KKULUP** = Tilhæng
* **+KKUMINAR** = Tilhæng
* **+KKUT** = Tilhæng
* **+KKUUTAAQ** = Tilhæng
* **+KKUUTAAR** = Tilhæng
* **+KUJUK** = Tilhæng
* **+KUJUP** = Tilhæng
* **+KUJUUQ** = Tilhæng
* **+KUJUUR** = Tilhæng
* **+KULA** = Tilhæng
* **+KULAAR** = Tilhæng
* **+KULLAK** = Tilhæng
* **+KULUK** = Tilhæng
* **+KULUP** = Tilhæng
* **+KULUUQ** = Tilhæng
* **+KUQ** = Tilhæng
* **+KUSUUR** = Tilhæng
* **+KUTSUUR** = Tilhæng
* **+LA** = Tilhæng
* **+LAAQ** = Tilhæng
* **+LAAR** = Tilhæng
* **+LI** = Tilhæng
* **+LIAA** = Tilhæng
* **+LIAASIIT** = Tilhæng
* **+LIAQ** = Tilhæng
* **+LIAR** = Tilhæng
* **+LIGUUQ** = Tilhæng
* **+LIK** = Tilhæng
* **+LIKKAAQ** = Tilhæng
* **+LIKKIRSAAR** = Tilhæng
* **+LIMI** = Tilhæng
* **+LIP** = Tilhæng
* **+LIR** = Tilhæng
* **+LIRI** = Tilhæng
* **+LIRNGUSAATE** = Tilhæng
* **+LIRSAAR** = Tilhæng
* **+LIRSUR** = Tilhæng
* **+LIRTUR** = Tilhæng
* **+LISAAR** = Tilhæng
* **+LISAR** = Tilhæng
* **+LISSAAQ** = Tilhæng
* **+LIUKU** = Tilhæng
* **+LIUKUA** = Tilhæng
* **+LIUNA** = Tilhæng
* **+LIUR** = Tilhæng
* **+LIUTE** = Tilhæng
* **+LIVIK** = Tilhæng
* **+LLAARE** = Tilhæng
* **+LLAATAA** = Tilhæng
* **+LLAMMAK** = Tilhæng
* **+LLAP** = Tilhæng
* **+LLAQQIP** = Tilhæng
* **+LLAR** = Tilhæng
* **+LLARIP** = Tilhæng
* **+LLATSIAR** = Tilhæng
* **+LLATTAA** = Tilhæng
* **+LLATTAAR** = Tilhæng
* **+LLATUAR** = Tilhæng
* **+LLI** = Tilhæng
* **+LLIQ** = Tilhæng
* **+LLIR** = Tilhæng
* **+LLIRPAAQ** = Tilhæng
* **+LLIUR** = Tilhæng
* **+LLUAR** = Tilhæng
* **+LLUINNAQ** = Tilhæng
* **+LLUINNAQQISSAAQ** = Tilhæng
* **+LLUINNAR** = Tilhæng
* **+LU** = Tilhæng
* **+LUGUUQ** = Tilhæng
* **+LUINNAR** = Tilhæng
* **+LUMI** = Tilhæng
* **+LUMIAASIIT** = Tilhæng
* **+LUP** = Tilhæng
* **+LUQA** = Tilhæng
* **+LUSUUQ** = Tilhæng
* **+LUUNNIILLI** = Tilhæng
* **+LUUNNIILLU** = Tilhæng
* **+LUUNNIIMMI** = Tilhæng
* **+LUUNNIIT** = Tilhæng
* **+LUUR** = Tilhæng
* **+MAA** = Tilhæng
* **+MAANNA** = Tilhæng
* **+MAANNAA** = Tilhæng
* **+MAANNAAJUNA** = Tilhæng
* **+MAAR** = Tilhæng
* **+MI** = Tilhæng
* **+MIAA** = Tilhæng
* **+MIAASIINNGUUQ** = Tilhæng
* **+MIAASIIT** = Tilhæng
* **+MINIQ** = Tilhæng
* **+MISAAR** = Tilhæng
* **+MITA** = Tilhæng
* **+MITAAVA** = Tilhæng
* **+MITAAVAAKU** = Tilhæng
* **+MITAAVAANA** = Tilhæng
* **+MITAAVAMI** = Tilhæng
* **+MIU** = Tilhæng
* **+MIUQ** = Tilhæng
* **+MMIRSUR** = Tilhæng
* **+NAAR** = Tilhæng
* **+NAQ** = Tilhæng
* **+NAR** = Tilhæng
* **+NASUGE** = Tilhæng
* **+NASURE** = Tilhæng
* **+NAVIAR** = Tilhæng
* **+NAVIIR** = Tilhæng
* **+NAVIIRSAAR** = Tilhæng
* **+NGA** = Tilhæng
* **+NGAAQ** = Tilhæng
* **+NGAAR** = Tilhæng
* **+NGAATSIAQ** = Tilhæng
* **+NGAJAK** = Tilhæng
* **+NGAJAP** = Tilhæng
* **+NIAA** = Tilhæng
* **+NIAALUP** = Tilhæng
* **+NIAQ** = Tilhæng
* **+NIAR** = Tilhæng
* **+NIARIUTAA** = Tilhæng
* **+NIARSARE** = Tilhæng
* **+NIINNAR** = Tilhæng
* **+NIKUQ** = Tilhæng
* **+NIKUU** = Tilhæng
* **+NIP** = Tilhæng
* **+NIQ** = Tilhæng
* **+NIQAR** = Tilhæng
* **+NIQ_AJUR** = Tilhæng
* **+NIR** = Tilhæng
* **+NIRAR** = Tilhæng
* **+NIRLIUR** = Tilhæng
* **+NIRLUP** = Tilhæng
* **+NIRPAA** = Tilhæng
* **+NIRPAAQ** = Tilhæng
* **+NIRPAARPAA** = Tilhæng
* **+NIRPAARPAAJU** = Tilhæng
* **+NIRSAQ** = Tilhæng
* **+NIRU** = Tilhæng
* **+NIRUJUSSUU** = Tilhæng
* **+NIRUMAAQ** = Tilhæng
* **+NIRUMAAR** = Tilhæng
* **+NISAQ** = Tilhæng
* **+NISSAQ** = Tilhæng
* **+NIUP** = Tilhæng
* **+NIUTAA** = Tilhæng
* **+NIUTE** = Tilhæng
* **+NNAAQ** = Tilhæng
* **+NNAP** = Tilhæng
* **+NNAR** = Tilhæng
* **+NNGAANNIIR** = Tilhæng
* **+NNGAR** = Tilhæng
* **+NNGIR** = Tilhæng
* **+NNGIRSAAR** = Tilhæng
* **+NNGISAANNAR** = Tilhæng
* **+NNGIT** = Tilhæng
* **+NNGUALLAARE** = Tilhæng
* **+NNGUAQ** = Tilhæng
* **+NNGUAR** = Tilhæng
* **+NNGUARSI** = Tilhæng
* **+NNGUASIK** = Tilhæng
* **+NNGUATSIAR** = Tilhæng
* **+NNGUJUUR** = Tilhæng
* **+NNGUR** = Tilhæng
* **+NNGUUJUIT** = Tilhæng
* **+PAAQ** = Tilhæng
* **+PAJAAQ** = Tilhæng
* **+PAJAAR** = Tilhæng
* **+PAJUK** = Tilhæng
* **+PAJUP** = Tilhæng
* **+PAK** = Tilhæng
* **+PALAAQ** = Tilhæng
* **+PALAAR** = Tilhæng
* **+PALLAK** = Tilhæng
* **+PALLAP** = Tilhæng
* **+PALUK** = Tilhæng
* **+PALUP** = Tilhæng
* **+PASIP** = Tilhæng
* **+PIAQ** = Tilhæng
* **+PIAR** = Tilhæng
* **+PILUK** = Tilhæng
* **+PILUP** = Tilhæng
* **+PILUUR** = Tilhæng
* **+QANNGIT** = Tilhæng
* **+QAR** = Tilhæng
* **+QATE** = Tilhæng
* **+QATIGIIP** = Tilhæng
* **+QATIGIIT** = Tilhæng
* **+QATTAAR** = Tilhæng
* **+QE** = Tilhæng
* **+QENA** = Tilhæng
* **+QINA** = Tilhæng
* **+QISSAAR** = Tilhæng
* **+QQA** = Tilhæng
* **+QQAAQ** = Tilhæng
* **+QQAAR** = Tilhæng
* **+QQAJAA** = Tilhæng
* **+QQAJAR** = Tilhæng
* **+QQAMMI** = Tilhæng
* **+QQAMMIQ** = Tilhæng
* **+QQAMMIR** = Tilhæng
* **+QQAR** = Tilhæng
* **+QQARTUR** = Tilhæng
* **+QQATAR** = Tilhæng
* **+QQATUR** = Tilhæng
* **+QQINNAAQ** = Tilhæng
* **+QQINNAAR** = Tilhæng
* **+QQIP** = Tilhæng
* **+QQISSAAQ** = Tilhæng
* **+QQISSAAR** = Tilhæng
* **+QQU** = Tilhæng
* **+QQURTU** = Tilhæng
* **+QQURTUSI** = Tilhæng
* **+QQURTUUQ** = Tilhæng
* **+QQUSAAR** = Tilhæng
* **+QQUTE** = Tilhæng
* **+QQUUQE** = Tilhæng
* **+QQUUTE** = Tilhæng
* **+R** = Tilhæng
* **+RAALLAK** = Tilhæng
* **+RAAR** = Tilhæng
* **+RALAAQ** = Tilhæng
* **+RALAK** = Tilhæng
* **+RAR** = Tilhæng
* **+RASAAR** = Tilhæng
* **+RATAAR** = Tilhæng
* **+RATAR** = Tilhæng
* **+RIAANNAA** = Tilhæng
* **+RIAAT** = Tilhæng
* **+RIANNGUAR** = Tilhæng
* **+RIAQ** = Tilhæng
* **+RIAR** = Tilhæng
* **+RIATAAR** = Tilhæng
* **+RIIR** = Tilhæng
* **+RIP** = Tilhæng
* **+RLAAQ** = Tilhæng
* **+RRAK** = Tilhæng
* **+RRATE** = Tilhæng
* **+RSUR** = Tilhæng
* **+RUJUK** = Tilhæng
* **+RUJUP** = Tilhæng
* **+RUJUUJUTAA** = Tilhæng
* **+RUJUUR** = Tilhæng
* **+RUJUURUTAA** = Tilhæng
* **+RULUP** = Tilhæng
* **+RULUUR** = Tilhæng
* **+RUNAR** = Tilhæng
* **+RUSAAR** = Tilhæng
* **+RUSAQ** = Tilhæng
* **+RUSAR** = Tilhæng
* **+RUTTUR** = Tilhæng
* **+RUUSAAR** = Tilhæng
* **+SAAR** = Tilhæng
* **+SAR** = Tilhæng
* **+SARE** = Tilhæng
* **+SI** = Tilhæng
* **+SIAQ** = Tilhæng
* **+SII** = Tilhæng
* **+SILAT** = Tilhæng
* **+SIMA** = Tilhæng
* **+SIMAAR** = Tilhæng
* **+SINNAA** = Tilhæng
* **+SINNAAA** = Tilhæng
* **+SINNAANNGUR** = Tilhæng
* **+SINNAAQ** = Tilhæng
* **+SINNAR** = Tilhæng
* **+SIR** = Tilhæng
* **+SIUR** = Tilhæng
* **+SIUT** = Tilhæng
* **+SSA** = Tilhæng
* **+SSAALIQI** = Tilhæng
* **+SSAAR** = Tilhæng
* **+SSAMAAQ** = Tilhæng
* **+SSAMAAR** = Tilhæng
* **+SSAQ** = Tilhæng
* **+SSAQQIP** = Tilhæng
* **+SSI** = Tilhæng
* **+SSIP** = Tilhæng
* **+SSUAQ** = Tilhæng
* **+SSUSIQ** = Tilhæng
* **+SUAQ** = Tilhæng
* **+SUAR** = Tilhæng
* **+SUATAAR** = Tilhæng
* **+SUNGAR** = Tilhæng
* **+SUNNI** = Tilhæng
* **+SUNNIP** = Tilhæng
* **+SUR** = Tilhæng
* **+SURE** = Tilhæng
* **+T** = Tilhæng
* **+TA** = Tilhæng
* **+TAAMA** = Tilhæng
* **+TAAQ** = Tilhæng
* **+TAAR** = Tilhæng
* **+TAAVA** = Tilhæng
* **+TALLAP** = Tilhæng
* **+TAQ** = Tilhæng
* **+TAR** = Tilhæng
* **+TARE** = Tilhæng
* **+TARIAARUTE** = Tilhæng
* **+TARIAQ** = Tilhæng
* **+TARIAQAR** = Tilhæng
* **+TARIAR** = Tilhæng
* **+TASSAA** = Tilhæng
* **+TE** = Tilhæng
* **+TIGE** = Tilhæng
* **+TIP** = Tilhæng
* **+TIR** = Tilhæng
* **+TITAAR** = Tilhæng
* **+TITIR** = Tilhæng
* **+TSAALI** = Tilhæng
* **+TSAALIUR** = Tilhæng
* **+TSAP** = Tilhæng
* **+TSIALAK** = Tilhæng
* **+TSIAQ** = Tilhæng
* **+TSIAR** = Tilhæng
* **+TSIISAA** = Tilhæng
* **+TSIP** = Tilhæng
* **+TSIR** = Tilhæng
* **+TTAAQ** = Tilhæng
* **+TTAARLU** = Tilhæng
* **+TTAARMI** = Tilhæng
* **+TTUINNAR** = Tilhæng
* **+TU** = Tilhæng
* **+TUAQ** = Tilhæng
* **+TUAR** = Tilhæng
* **+TUARANNGUU** = Tilhæng
* **+TUATAAR** = Tilhæng
* **+TUGAQ** = Tilhæng
* **+TUKASSAA** = Tilhæng
* **+TUQ** = Tilhæng
* **+TUQAQ** = Tilhæng
* **+TUR** = Tilhæng
* **+TURSUU** = Tilhæng
* **+TURUJUSSUANNGUR** = Tilhæng
* **+TURUJUSSUU** = Tilhæng
* **+TURUJUSSUUSIMA** = Tilhæng
* **+TURUJUSSUUSIMAGALUAR** = Tilhæng
* **+TURUJUSSUUSSA** = Tilhæng
* **+TURUJUU** = Tilhæng
* **+TUSSAA** = Tilhæng
* **+TUSSAAGALUAR** = Tilhæng
* **+TUSSAANNGIKKALUAR** = Tilhæng
* **+TUSSAANNGIT** = Tilhæng
* **+TUSSANNGUR** = Tilhæng
* **+TUSSAQ** = Tilhæng
* **+TUU** = Tilhæng
* **+TUUQ** = Tilhæng
* **+TUUR** = Tilhæng
* **+TUUSAAR** = Tilhæng
* **+TUUSI** = Tilhæng
* **+U** = Tilhæng
* **+UAAR** = Tilhæng
* **+UKU** = Tilhæng
* **+UKUA** = Tilhæng
* **+UMA** = Tilhæng
* **+UMI** = Tilhæng
* **+UMMI** = Tilhæng
* **+UMMIR** = Tilhæng
* **+UNA** = Tilhæng
* **+UR** = Tilhæng
* **+URL** = Tilhæng
* **+USAAQ** = Tilhæng
* **+USAAR** = Tilhæng
* **+USAP** = Tilhæng
* **+USAQ** = Tilhæng
* **+USAR** = Tilhæng
* **+USIQ** = Tilhæng
* **+UTE** = Tilhæng
* **+UTIGE** = Tilhæng
* **+VALLAAQ** = Tilhæng
* **+VALLAAR** = Tilhæng
* **+VIK** = Tilhæng
* **+VIP** = Tilhæng
* **+VISSUAQ** = Tilhæng
* **+VISSUR** = Tilhæng
* **+VVAARIK** = Tilhæng
* **+VVAARIP** = Tilhæng
* **NIAR=TARE=LIR=GALUAR** = Tilhæng
* **SIMAAR=VALLAAR=LIR** = Tilhæng
* **TARIAQAR=LLUAR** = Tilhæng

## Symbols that need to be escaped on the lower side (towards twolc)
* »
* « ()
* > (written with square brackets as stem, to avoid collision with the morpheme boundary marker)
* < (written with square brackets as stem, to avoid collision with the morpheme boundary marker)

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised
For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
|  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@ | Block these words from making further compounds
|  @D.CmpLast.TRUE@ | Block such words from entering R
|  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.
Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: København > københavner.

* * *

<small>This (part of) documentation was generated from [src/fst/root.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/root.lexc)</small>

---

# Grønlandske nomener 

## Dokumentasjon for leksikonnavne:

* Z = nomen
* 1 = svag bøjning, p-bøjning
* 2 = sterk bøjning, up-bøjning
* P = plurale tantum
* S = singularis
* - = sterk bøjing som trunkerer (2-)
* a, q, ... = gemineringer ved konsonantiske flexiver
* Z = nomen
* morf = går til derivationsleksika
*      = går til flexivleksika
* tpt  =  
* tup  = 
* K    = Direkte til finale klitika

...

* LEXICON Nomen  Nominalstammer

Leksikonet Nomen inneholder nomenerne.

xxx 20170522 til former, som ikke kan læses men som har brug for en analyse i cg'en. Pluralis og singularis-kataloger er ikke medtaget.

* aaffaffak Z2-Zmorf ;              
* aaffaffak+N+Abs+Sg:aaffaffaq Krestr ; 
* aaffaq Z2-qZmorf ;                 
* ...

* * *

<small>This (part of) documentation was generated from [src/fst/stems/nouns.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/stems/nouns.lexc)</small>

---



xxx 20170522 til former, som ikke kan læses men som har brug for en analyse i cg'en..

* * *

<small>This (part of) documentation was generated from [src/fst/stems/propernouns.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/stems/propernouns.lexc)</small>

---



xxx 20170524 til verbalstammer, som ikke kan læses men som har brug for en analyse i cg'en. Pluralis tantum-kataloger er ikke medtaget. !er det nødvendigt også at medtage stammer fra derivationsleksika?

* * *

<small>This (part of) documentation was generated from [src/fst/stems/verbs.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/stems/verbs.lexc)</small>

---



We describe here how abbreviations are in Kalaallisut are read out, e.g.
for text-to-speech systems.

For example:

* s.:syntynyt # ;  
* os.:omaa% sukua # ;  
* v.:vuosi # ;  
* v.:vuonna # ;  
* esim.:esimerkki # ; 
* esim.:esimerkiksi # ; 

* * *

<small>This (part of) documentation was generated from [src/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-kal/blob/main/src/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---



% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

* * *

<small>This (part of) documentation was generated from [src/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-kal/blob/main/src/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---


[ L A N G U A G E ]  G R A M M A R   C H E C K E R

# DELIMITERS

# TAGS AND SETS

## Tags

This section lists all the tags inherited from the fst, and used as tags
in the syntactic analysis. The next section, **Sets**, contains sets defined
on the basis of the tags listed here, those set names are not visible in the output.

### Beginning and end of sentence
BOS
EOS

### Parts of speech tags

N
A
Adv
V
Pron
CS
CC
CC-CS
Po
Pr
Pcle
Num
Interj
ABBR
ACR
CLB
LEFT
RIGHT
WEB
PPUNCT
PUNCT

COMMA
¶

### Tags for POS sub-categories

Pers
Dem
Interr
Indef
Recipr
Refl
Rel
Coll
NomAg
Prop
Allegro
Arab
Romertall

### Tags for morphosyntactic properties

Nom
Acc
Gen
Ill
Loc
Com
Ess
Ess
Sg
Du
Pl
Cmp/SplitR
Cmp/SgNom Cmp/SgGen
Cmp/SgGen
PxSg1
PxSg2
PxSg3
PxDu1
PxDu2
PxDu3
PxPl1
PxPl2
PxPl3
Px

Comp
Superl
Attr
Ord
Qst
IV
TV
Prt
Prs
Ind
Pot
Cond
Imprt
ImprtII
Sg1
Sg2
Sg3
Du1
Du2
Du3
Pl1
Pl2
Pl3
Inf
ConNeg
Neg
PrfPrc
VGen
PrsPrc
Ger
Sup
Actio
VAbess

Err/Orth

### Semantic tags

Sem/Act
Sem/Ani
Sem/Atr
Sem/Body
Sem/Clth
Sem/Domain
Sem/Feat-phys
Sem/Fem
Sem/Group
Sem/Lang
Sem/Mal
Sem/Measr
Sem/Money
Sem/Obj
Sem/Obj-el
Sem/Org
Sem/Perc-emo
Sem/Plc
Sem/Sign
Sem/State-sick
Sem/Sur
Sem/Time
Sem/Txt

HUMAN

PROP-ATTR
PROP-SUR

TIME-N-SET

###  Syntactic tags

@+FAUXV
@+FMAINV
@-FAUXV
@-FMAINV
@-FSUBJ>
@-F<OBJ
@-FOBJ>
@-FSPRED<OBJ
@-F<ADVL
@-FADVL>
@-F<SPRED
@-F<OPRED
@-FSPRED>
@-FOPRED>
@>ADVL
@ADVL<
@<ADVL
@ADVL>
@ADVL
@HAB>
@<HAB
@>N
@Interj
@N<
@>A
@P<
@>P
@HNOUN
@INTERJ
@>Num
@Pron<
@>Pron
@Num<
@OBJ
@<OBJ
@OBJ>
@OPRED
@<OPRED
@OPRED>
@PCLE
@COMP-CS<
@SPRED
@<SPRED
@SPRED>
@SUBJ
@<SUBJ
@SUBJ>
SUBJ
SPRED
OPRED
@PPRED
@APP
@APP-N<
@APP-Pron<
@APP>Pron
@APP-Num<
@APP-ADVL<
@VOC
@CVP
@CNP
OBJ
<OBJ
OBJ>
<OBJ-OTHERS
OBJ>-OTHERS
SYN-V
@X

## Sets containing sets of lists and tags

This part of the file lists a large number of sets based partly upon the tags defined above, and
partly upon lexemes drawn from the lexicon.
See the sourcefile itself to inspect the sets, what follows here is an overview of the set types.

### Sets for Single-word sets

INITIAL

### Sets for word or not

WORD
NOT-COMMA

### Case sets

ADLVCASE

CASE-AGREEMENT
CASE

NOT-NOM
NOT-GEN
NOT-ACC

### Verb sets

NOT-V

### Sets for finiteness and mood

REAL-NEG

MOOD-V

NOT-PRFPRC

### Sets for person

SG1-V
SG2-V
SG3-V
DU1-V
DU2-V
DU3-V
PL1-V
PL2-V
PL3-V

### Pronoun sets

### Adjectival sets and their complements

### Adverbial sets and their complements

### Sets of elements with common syntactic behaviour

### NP sets defined according to their morphosyntactic features

### The PRE-NP-HEAD family of sets

These sets model noun phrases (NPs). The idea is to first define whatever can
occur in front of the head of the NP, and thereafter negate that with the
expression **WORD - premodifiers**.

### Border sets and their complements

### Grammarchecker sets

* * *
<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-kal/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small># Tokeniser for kal

Usage:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1. unknown word-like forms, and
2. unmatched strings
We want to give 1) a match, but let 2) be treated specially by
`hfst-tokenise -a`
Unknowns are made of:
* lower-case ASCII
* upper-case ASCII
* select extended latin symbols
ASCII digits
* select symbols
* Combining diacritics as individual symbols,
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

## Unknown handling
Unknowns are tagged ?? and treated specially with `hfst-tokenise`
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-disamb-gt-desc.pmscript](https://github.com/giellalt/lang-kal/blob/main/tools/tokenisers/tokeniser-disamb-gt-desc.pmscript)</small>

---

# Grammar checker tokenisation for kal

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```
$ make
$ echo "ja, ja" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```
$ echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa boasttu olmmoš, man mielde lahtuid." | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
$ echo "márffibiillagáffe" | hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://github.com/hfst/hfst/wiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Finally we mark as a token any sequence making up a:
* known word in context
* unknown (OOV) token in context
* sequence of word and punctuation
* URL in context

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript](https://github.com/giellalt/lang-kal/blob/main/tools/tokenisers/tokeniser-gramcheck-gt-desc.pmscript)</small>

---

# TTS tokenisation for smj

Requires a recent version of HFST (3.10.0 / git revision>=3aecdbc)
Then just:
```sh
make
echo "ja, ja" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

More usage examples:
```sh
echo "Juos gorreválggain lea (dárbbašlaš) deavdit gáibádusa \
boasttu olmmoš, man mielde lahtuid." \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "(gáfe) 'ja' ja 3. ja? ц jaja ukjend \"ukjend\"" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
echo "márffibiillagáffe" \
| hfst-tokenise --giella-cg tokeniser-disamb-gt-desc.pmhfst
```

Pmatch documentation:
<https://kitwiki.csc.fi/twiki/bin/view/KitWiki/HfstPmatch>

Characters which have analyses in the lexicon, but can appear without spaces
before/after, that is, with no context conditions, and adjacent to words:
* Punct contains ASCII punctuation marks
* The symbol after m-dash is soft-hyphen `U+00AD`
* The symbol following {•} is byte-order-mark / zero-width no-break space
`U+FEFF`.

Whitespace contains ASCII white space and
the List contains some unicode white space characters
* En Quad U+2000 to Zero-Width Joiner U+200d'
* Narrow No-Break Space U+202F
* Medium Mathematical Space U+205F
* Word joiner U+2060

Apart from what's in our morphology, there are
1) unknown word-like forms, and
2) unmatched strings
We want to give 1) a match, but let 2) be treated specially by hfst-tokenise -a
* select extended latin symbols
* select symbols
* various symbols from Private area (probably Microsoft),
so far:
* U+F0B7 for "x in box"

TODO: Could use something like this, but built-in's don't include šžđčŋ:

Simply give an empty reading when something is unknown:
hfst-tokenise --giella-cg will treat such empty analyses as unknowns, and
remove empty analyses from other readings. Empty readings are also
legal in CG, they get a default baseform equal to the wordform, but
no tag to check, so it's safer to let hfst-tokenise handle them.

Needs hfst-tokenise to output things differently depending on the tag they get

* * *

<small>This (part of) documentation was generated from [tools/tokenisers/tokeniser-tts-cggt-desc.pmscript](https://github.com/giellalt/lang-kal/blob/main/tools/tokenisers/tokeniser-tts-cggt-desc.pmscript)</small>

---

