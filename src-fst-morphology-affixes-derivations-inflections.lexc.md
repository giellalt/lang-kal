
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

Det kan være flere grunder hertil:
* de er simpelthen ikke definerede
* det korrekte leksikon er ikke tilføjet, og lexc tar suffikset istedenfor
* det er en skrivefejl i leksikonnavnet

## DERIVATIONSMORFEMERNES LEKSIKA

Her kommer en liste over de ulike leksika.
Nogle af dem er dokumenterede, andre ikke.

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

* LEXICON XIiPX  

* LEXICON XIiPX2  

* LEXICON XItsX2  

* LEXICON gallar-iv2  

* LEXICON tp_Gram/Ord  obs 20200623: fleksionsmorfemgrænse er %< og ikke %> Ny PL20220522 kun til ordenstal

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

- LEXICON N_Loan_ACR_morf  Derivationsmorfemer til akronymer som BMW, IT etc. som er nominale og kan bøjes
	 -  N_Loan_ACR_infl ;   !PL20240511 nyt fortsættelseslex

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/derivations-inflections.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/derivations-inflections.lexc)</small>
