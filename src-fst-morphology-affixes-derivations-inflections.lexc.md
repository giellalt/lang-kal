
# Fil for at generere de centrale morfologiske processer i vor grønlandske analysator               
## September 2024
## branch: (testing), regressionstest: regression (branch: testing - kaltesting)

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

* LEXICON Z1Zmorf  Derivationsmorfemer til nominer, viser til **tp** og giver derefter nn-derivationer
	*  tp ; 

* LEXICON Z1eqZmorf  Derivationsmorfemer til nominer på seq og leq
	  *  Z1eqZ ; 

* LEXICON nuliaqmorf  derivationsmorfemer til typen *nuliaq*

* LEXICON SEQgemin  derivationsmorfemer til nominer

* LEXICON Z1+le_UdenPossessumZmorf  derivationsmorfemer til nominer som kalaaleq, der ikke kan tage possessum

* LEXICON Z1+tZmorf  derivationsmorfemer til nominer som pisataq og nivaataq !PL20210519 retableret og stammer fjernet fra GEMS

* LEXICON Z2kZmorf  nominer som eqik

* LEXICON Z2Zmorf  nominer som erneq

* LEXICON Z2i2Zmorf  derivationsmorfemer til aleq, ateq

* LEXICON Z2-Zmorf  derivationsmorfemer til tup- paa K. Jf. Z2-qZmorf

* LEXICON Z2-uukZmorf  derivationsmorfemer til tup- paa K. Jf. Z2-qZmorf

* LEXICON Z2-qZmorf  Nyt leksikon til tup- paa Q 7.9.2007 for at haandtere forskelle som ..fiksuaq vs. ..aqsuaq

* LEXICON Z2-eqZmorf  Nyt leksikon til tup-2, magen til Z2-qZmorf, men har andre fleksioner til tulleq og qiterleq

* LEXICON Z2aqZmorf  derivationsmorfemer til nominer

* LEXICON Z2+rZmorf  derivationsmorfemer til nominer

* LEXICON Z1+ssZmorf  derivationsmorfemer til nominer

* LEXICON Z1+meZmorf  derivationsmorfemer til nominer

* LEXICON Z1+kaZmorf  derivationsmorfemer til nominer

* LEXICON Z1+keZmorf  derivationsmorfemer til nominer atigeq

* LEXICON Z1+koZmorf  derivationsmorfemer til nominer

* LEXICON ZsaqZmorf  derivationsmorfemer til nominer

* LEXICON Z1+qaZmorf  derivationsmorfemer til nominer

* LEXICON Z1+qoZmorf  derivationsmorfemer til nominer

* LEXICON Z1+qeZmorf  derivationsmorfemer til nominer

* LEXICON Z1+laZmorf  derivationsmorfemer til nominer

* LEXICON Z1+loZmorf  derivationsmorfemer til nominer som nuloq

* LEXICON Z1+naZmorf  derivationsmorfemer til nominer med gemination af n

* LEXICON Z1+noZmorf  derivationsmorfemer til nanoq med gemination af n tilføjet 20170522

	* +ALUK+Der/nn+INNAQ+Der/nn:%>%TRUNCaluinnaq tup- ; 

- LEXICON Z1VZmorf  Derivationsmorfemer til nominer, der ender med vokal a, i, u 20200916 NN
	 -  tpV ;   !PL20221117 nyt fortsættelseslex

* LEXICON ZseqZ  qalaseq

* LEXICON SIKgemin  derivationsmorfemer til nominer som ikusik:iku

* LEXICON SUKgemin  derivationsmorfemer til nominer som pukusuk:puku

* LEXICON Z1eZmorf  derivationsmorfemer til nominer på udlydende schwa

* LEXICON Z1tipeZmorf  derivationsmorfemer til nominer på udlydende schwa

* LEXICON Z1iZmorf  derivationsmorfemer til nominer med strong i

* LEXICON Z1iqZmorf  derivationsmorfemer til nominer med strong i som qimmeq

* LEXICON tptmorf  

* LEXICON ZtiZmorf  taggit

* LEXICON ZkkutZmorf  derivativer til typen saki og sakikkut

* LEXICON Z2veqZmorf  derivationsmorfemer til aaveq-typen

* LEXICON Z2tupeqZmorf  derivationsmorfemer tupeq

* LEXICON Z2+lZmorf  derivationsmorfemer til nominer korrigeret februar 2017 med hensyn til additive og recessive morfemer.

gennemgangskatalog for up-stammer, der kræver replaciv sandhi

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

Uku qanoq IV-mod_C-imi ilanngunneqassappat?

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

* LEXICON XItX  type imaappoq, kaavippoq (NB ikke kâvigpo?, men kâvípo?)

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

* LEXICON flex-iv_r  

* LEXICON flex-iv_r2  

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

* LEXICON ZsukZ  170306 til pukusuk

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

* LEXICON tup_k_reduceret  nalik

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

* LEXICON kTaq  !PL20240426 Nyt LEX til k-stammer som NIRLUP med både gaq og taq 

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

* LEXICON N_Loan_V_ObligatoriskBindestreg  korte stammer som BA

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

* LEXICON Z1+qaZ  !### udkommentererede gemineringsleksika, erstattet af GEMS (stop, klusil) og GEMC (kontinuant)

* LEXICON Z1+qoZ  

* LEXICON Z1+qeZ  

* LEXICON ZsaqZ  

* LEXICON Z1+kaZ  

* LEXICON Z1+keZ  

* LEXICON Z1+koZ  

* LEXICON Z1+laZ  

* LEXICON Z1+loZ  

* LEXICON Z1+naZ  

* LEXICON Z1+noZ  tilføjet livm 20170522 til nanoq med gemination af n

* LEXICON Z1nujaqZ  

* LEXICON Z1joqZ  nominer som i qajoq:qa

* LEXICON Z1+ngaZ  

* LEXICON Z1+ngeZ  iviangeq, ivianngit

* LEXICON Z1+niuZmorf  derivationsmorfemer til niu

* LEXICON Z1+maZmorf  derivationsmorfemer til nominer som isuma

* LEXICON Z1nujaqZmorf  typen nujaq+Der/nn:nu

* LEXICON Z1joqZmorf  typen pujoq+Der/nn:pu

* LEXICON Z1+ngaZmorf  typen sapangaq+Der/nn:sapan

* LEXICON Z1+ngeZmorf  typen iviangeq+Der/nn:ivian

* LEXICON Z1+ssZ  

* LEXICON Z1+niuZ  

* LEXICON Z1+maZ  

* LEXICON Z1+meZ  

- LEXICON N_Loan_ACR_morf  Derivationsmorfemer til akronymer som BMW, IT etc. som er nominale og kan bøjes
	 -  N_Loan_ACR_infl ;   !PL20240511 nyt fortsættelseslex

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/derivations-inflections.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/derivations-inflections.lexc)</small>