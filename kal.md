# Kalaallisut description 

All documents in one file



#    W E S T   G R E E N L A N D I C   D I S A M B I G U A T O R  #

# Delimiters, tags and sets

The **tagdeclaration.cg3** file starts here

@OUTSIDE RULES@

##  Tags and sets #

### Positions and household 

The following tags: 
BOS, EOS, CLB, Symbol, iSymbol, PUNCT, LEFT, RIGHT, COMMONAFFSTRING, EXCLMARK

### Parts of speech with tags declared as single-membered LISTs

* LIST N = N ;  =
* LIST V = V ;  =
* LIST N* = N* ;  = Præprocessorens tagging af N, der indgår i compounds
* LIST iV = iV ;  = Præprocessorens tagging af V, som skifter ordklasse senere i ordet.
* LIST iN = iN ;  = Præprocessorens tagging af N, som skifter ordklasse senere i ordet.
* LIST iProp = iProp ;  = Præprocessorens tagging af Prop, som skifter ordklasse senere i ordet.
* LIST iPron = iPron ;  = Præprocessorens tagging af Pron, som skifter ordklasse senere i ordet.

### Grammar tags
Gram/... and different specifications

* LIST Gram/2sml = Gram/2sml ;  = ?
* LIST Gram/ImpPos = Gram/ImpPos ;  = eksperimentell
* LIST Gram/Int = Gram/Int ;  = i brug?
* LIST Gram/Indef = Gram/Indef ;  = i brug?
* LIST DivPron = Gram/Cong DivPron ;  = ?
* LIST Gram/Cong = Gram/Cong ;  =
* LIST Gram/Hyb = Gram/Hyb ;  = hybridverbum, resultat av Der/nv efter substantivflektion (men er Aeq Sg syntaktisk relevant?, tt)
* LIST Gram/Pers = Gram/Pers ; 
* LIST Gram/PersQAR = Gram/PersQAR ;   = Tag til QAR i paratakse med personligt V
* LIST Gram/Coref = Gram/Coref ; 
* LIST Gram/Dem = Gram/Dem ; 
* LIST Gram/TransverbNIQ = Gram/TransverbNIQ ;   = PL20210417 kun til NIQ, der kan tage direkte objekt
* LIST Gram/ContSubjekt = Gram/ContSubjekt ;   = "dansk" subjekt tilføjet med ADDCOHORT
* LIST Gram/Upersonlig = Gram/Upersonlig ;   = Tag indsat i dep til konstruktioner, der oversættes med "man"
* LIST Gram/Abbr = Gram/Abbr ; 
* LIST Gram/ACR = Gram/ACR ; 
* LIST Gram/Ord = Gram/Ord Der/Ord ;   =  Ordinaltal #Hedder Der/Ord i den videre kæde.
* LIST Gram/Adj = Gram/Adj ;  # Adjektiver optaget ubøjet og undertiden anvendt med dansk syntaks
* LIST Gram/Adv-encl = Gram/Adv-encl ; 
* LIST Gram/Comp = Gram/Comp ;   = 20100228 Ny tag udelukkende til neq ajor/saper/artor/nalu (PL)
* LIST Gram/Conj-encl = Gram/Conj-encl ;   = sideordnende enklitiske konjunktioner
* LIST Gram/Db = Gram/Db ;  
* LIST Gram/Exclm = Gram/Exclm ; 
* LIST Gram/Gaanni = Gram/Gaanni ; 
* LIST Gram/HV = Gram/HV ; 
* LIST Gram/IV = Gram/IV ; 
* LIST Gram/TV = Gram/TV ; 

### Semantic tags
Gram/... and different specifications

* LIST Sem/CognitiveMaking = Sem/CognitiveMaking;  = qinersivoq i modsætning til qinerlerpoq
* LIST Sem/Concessive = Sem/Concessive ;  = koncessive sætninger
* LIST Sem/event = Sem/event ;  
* LIST Sem/Fem = Sem/Fem ;  = Introduceret som test 20180613. Skal måske ud igen
* LIST Sem/FirstName = Sem/FirstName ; 
* LIST Sem/Geo = Sem/Geo ; 
* LIST iSem/Geo = iSem/Geo ; 
* LIST Sem/Hum = Sem/Hum <hum> ; 
* LIST Sem/Hunt = Sem/Hunt;  = qinerlerpoq i modsætning til qinersivoq

### Orthographic error tags
* LIST Orth/Alt = Orth/Alt ; 
* LIST Orth/Append = Orth/Append <append> ;  = readings added by CG (APPEND)
* LIST Orth/Arch = Orth/Arch ; 
* LIST Orth/Copy = Orth/Copy ;  = Alternative append rules
* LIST Orth/Youth = Orth/Youth ;  youth language
* LIST SUB = Orth/Arch Orth/Alt Orth/Youth ;  common tag for all

### Grammatical tags
Sg, Du, Pl, iSg, iDu, iPl, ALL_Sg, ALL_Pl, case forms, verbal inflection

- **LIST 1SgPoss = 1SgPoss ;** = 
- **LIST 2SgPoss = 2SgPoss ;** = 
- **LIST 3SgPoss = 3SgPoss ;** = 
- **LIST 4SgPoss = 4SgPoss ;** = 
- **LIST 1PlPoss = 1PlPoss ;** = 
- **LIST 2PlPoss = 2PlPoss ;** = 
- **LIST 3PlPoss = 3PlPoss ;** = 
- **LIST 4PlPoss = 4PlPoss ;** = 

- **LIST i1SgPoss = i1SgPoss ;** = 
- **LIST i2SgPoss = i2SgPoss ;** = 
- **LIST i3SgPoss = i3SgPoss ;** = 
- **LIST i4SgPoss = i4SgPoss ;** = 
- **LIST i1PlPoss = i1PlPoss ;** = 
- **LIST i2PlPoss = i2PlPoss ;** = 
- **LIST i3PlPoss = i3PlPoss ;** = 
- **LIST i4PlPoss = i4PlPoss ;** = 

- **LIST 1SgO = 1SgO ;** = 
- **LIST 2SgO = 2SgO ;** = 
- **LIST 3SgO = 3SgO ;** = 
- **LIST 4SgO = 4SgO ;** = 
- **LIST 1PlO = 1PlO ;** = 
- **LIST 2PlO = 2PlO ;** = 
- **LIST 3PlO = 3PlO ;** = 
- **LIST 4PlO = 4PlO ;** = 

### #Diverse tags defineret i kal-pre2 (dog et par hybrider her i disambiguator)

### Derivatives 

- **LIST A* = A* ;** = 
- **LIST A = A ;** = 
- **LIST ALLAP = ALLAP ;** = 
- **LIST ARAQ = ARAQ ;** = 
- **LIST ARSUK = ARSUK ;** = 
- **LIST GASAAR = GASAAR ;** = 
- **LIST IAR = IAR ;** = 
- **LIST IP = IP ("IP") ;** = 
- **LIST INNAQ = INNAQ ;** = 
- **LIST INNAR = INNAR ;** = 
- **LIST INNAR_LIR = INNAR=LIR ;** = 
- **LIST INNAR_NIAR = INNAR=NIAR ;** = 
- **LIST INNAR_QE = INNAR=QE ;** = 
- **LIST INNAR_SIMA = INNAR=SIMA ;** = 
- wrx. moew od rhw aame

- **LIST Tilhængspartikel = LU LI LUUNNIIT ADV-LU CONJ-LU ADV-LI CONJ-LI ADV-LUUNNIIT CONJ-LUUNNIIT ;** = Sæt af tilhængspartiler
- **LIST Dobbelttransitiv = NIRAR QQU SURE TIP ;** = 

- **LIST WFORM = "<.*>"r ;** = regulært udtryk
- **LIST BFORM = ".*"r ;** = regulært udtryk

# Sets

## Alle ordklasser

* LIST WORD = N V Pali Conj Adv Interj Gram/Exclm Pron Prop Num ; 
* SET POS = WORD - (<heur> <f:[0-9]+>r) ; 

* SET NOT-PROP = WORD - Prop ; 

* SET NOT-Abbr = WORD - Gram/Abbr ; 

* SET NUM = Num | iNum ; 

* LIST NUMERAL = "ataaseq" "marluk" "pingasut" "sisamat" "tallimat" "arfineq" "arfineq marluk" "arfineq pingasut" "qulingiluat" "qulaaluat" "qulit" "aqqaneq"; 

* LIST KLOKKESLET = ("ataaseq" NNGUR) ("marluk" NNGUR) ("pingasut" NNGUR) ("sisamat" NNGUR) ("tallimat" NNGUR) ("arfineq" NNGUR) ("arfineq-marluk" NNGUR) ("arfineq-pingasut" NNGUR) ("qulingiluat" NNGUR) ("qulaaluat" NNGUR) ("qulit" NNGUR) ("aqqaneq" NNGUR); 

* SET AFFINGERET = ALLAP , ARAQ , ARSUK , IAR  , INNAQ , INNAR , INNAR_LIR 

## Verb

Ulike verbtyper.

- **SET TRANSVERB = 1SgO | 2SgO | 3SgO | 4SgO | 1PlO | 2PlO | 3PlO | 4PlO ;** = 
- **SET INTRANSVERB = V - TRANSVERB ;** = 
- **SET VFIN = Ind | Opt | Int | Imp ;** =
- **SET DOTR = Gram/Db | (/__Gram/TV QQU__/l) | (/__Gram/TV TIP__/l) | (/__Gram/TV SAR__/l) | ("ussersuup") | (/__Gram/TV UTE Gram/vv__/l) ;** =
- **LIST 3SGSUBJVERB = (V 3Sg) ;** =
- **LIST 3PLSUBJVERB = (V 3Pl) ;** =
- **SET 34SGOBJVERB = 3SgO | 4SgO;** =
- **SET 34PLOBJVERB = 3PlO | 4PlO ;** =
- **SET VERBNOT3SGSUBJ = V - 3SGSUBJVERB ;** =
- **SET VERBNOT3PLSUBJ = V - 3PLSUBJVERB ;** =
- **SET COREF = (V 4Sg) | (V 4Pl) ;** =
- **SET 12SUBJVERB = (V 1Sg) | (V 1Du) | (V 1Pl) | (V 2Sg) | (V 2Du) | (V 2Pl) ;** =
- **SET PLURSUBJVERB = (V 1Pl) | (V 2Pl) | (V 3Pl) | (V 4Pl) ;** =
- **SET PLUROBJVERB = (V 1PlO) | (V 2PlO) | (V 3PlO) | (V 4PlO) ;** =
- **SET V-NOT-Par = V - Par ;** =
- **SET VERB-NOTCONT = V - Cont - ContNeg;** =
- **SET CONT = Cont OR ContNeg;** =
- **SET CONT_INTRANS = CONT - TRANSVERB ;** = Til brug i BARRIER
- **SET CON_CAU = Con OR Cau ;** =
- **LIST PASSIV = (GE SIMA) NIQAR (/Gram/TV TAQ Der/vn U/l) (/TIP Der/vv Gram/TV TAQ Der/vn N/l) (/Gram/Db TAQ Der/vn U/l);** =
- **SET PASSIV_ALTERNATIV = NIQAR OR (/Gram/TV TAQ Der/vn U/l) OR (/Gram/TV (Gram/Refl )?Gram/IV NIQ Der/vn IRUTE/l) ;** = PL ny 20190630 fordi (GE SIMA) forekommer for farlig
- **LIST NO_HTR = "allap" ;** = 20091108 - Verber, der ikke kan kombinere med HTR
- **SET SchwaDerivativ = GE | TARE | QE | SURE ;** =
- **SET PERSON = 1Sg | 2Sg | 3Sg | 4Sg | 1Pl | 2Pl | 3Pl | 4Pl ;** =
- **SET PROP = Prop | iProp ;** =
- **SET GAANNI = (/"<.*[g|k|r]aanni.*>"/r) + Par + 3Sg + 3SgO OR (/"<.*[g|k|r]aanni.*>"/r) + Par + 3Sg + 3PlO OR (/"<.*[g|k|r]aanni.*>"/r) + Par + 4Sg OR (/"<.*[g|k|r]aanni.*>"/r) + Par + 3Sg ;** =#20180805: intransitiv GAANNI bliver 3Sg og ikke 4Sg som hidtil.
- **SET MOOD = VFIN | CONT | Cau | IteCau | Con | Par ;** =

- **SET PILLUGU = ("pi" Cont) - AFFINGERET | ("pi" ContNeg) - AFFINGERET;** =
- **SET PISSUTIGALUGU = ("pissut" GE Cont) | ("pissut" GE ContNeg) ;** =
- **SET PEQQUTIGALUGU = ("peqqut" GE Cont) | ("peqqut" GE ContNeg) ;** =
- **SET AQQUSAARLUGU = ("aqqusaar" Cont) | ("aqqusaar" ContNeg) ;** =
- **SET ATORLUGU = ("ator" Cont) - AFFINGERET | ("ator" ContNeg) - AFFINGERET ;** =
- **SET ILAGALUGU = ("ila" GE Cont) | ("ila" GE ContNeg) ;** =
- **SET KILLEQQULLUGU = ("killeqqup" Cont) - AFFINGERET | ("killeqqup" ContNeg) - AFFINGERET ;** =
- **SET MALILLUGU = ("malip" Cont) - AFFINGERET | ("malip" ContNeg) - AFFINGERET ;** =
- **SET NAAPERTORLUGU = ("naapertor" Cont) - AFFINGERET | ("naapertor" ContNeg) - AFFINGERET ;** =
- **SET SINNERLUGU = ("sinner" Cont) - AFFINGERET ;** =
- **SET TAMAKKERLUGU = ("tamakker" Cont) - AFFINGERET | ("tamakker" ContNeg) - AFFINGERET ;** =
- **SET TIKILLUGU = ("tikip" Cont) - AFFINGERET | ("tikip" ContNeg) - AFFINGERET ;** =
- **SET TUNNGAVIGALUGU = ("tunnga" VIK GE Cont) | ("tunnga" VIK GE ContNeg) ;** =
- **SET OBJVERB = PEQQUTIGALUGU | PILLUGU | PISSUTIGALUGU | AQQUSAARLUGU | ATORLUGU | ILAGALUGU | MALILLUGU | NAAPERTORLUGU | SINNERLUGU | TAMAKKERLUGU | TIKILLUGU | TUNNGAVIGALUGU ;** =
- **LIST NONOBJVERB = ("agguar" QATE GIIP TIP Cont) ;** =

## Nominer
Set for kasus, possessum, appellativ, ulike nomentyper

- **SET KASUS = Abs | Rel | Trm | Abl | Lok | Aeq | Ins | Via ;** =
- **SET NOT-REL = KASUS - Rel ;** =
- **SET OBLIQUE = Trm | Abl | Lok | Aeq | Ins | Via ;** =
- **SET iOBLIQUE = iTrm | iAbl | iLok | iAeq | iIns | iVia | Trm + Hyb/1-2 | Abl + Hyb/1-2 | Lok + Hyb/1-2 | Aeq + Hyb/1-2 | Ins + Hyb/1-2 | Via + Hyb/1-2 ;** =
- **SET NUMERUS = Sg | Pl ;** =
- **SET KONGRUENSADLED = N + $$KASUS + $$NUMERUS ;** =
- **SET ALL_OBLIQUE = OBLIQUE | iOBLIQUE ;** =

- **SET 3PlPossUdenMWE = 3PlPoss - ("Kalaallit Nunaat") - ("Kalaallit Illuutaat") - ("Kalaallit Røde Korsiat") - ("naqqup-ate") - ("nunap inoqqaavi") - ("Nunatsinni Inuit Innarluutillit Kattuffiat") - ("sapaatip-akunneq") - ("Tuluit Nunaat") - ("Zombiet Nunaat");** =
- **SET POSSESSUM1 = (N 1SgPoss) | (iN i1SgPoss) | (N 1PlPoss) | (iN i1PlPoss) | (Num 1SgPoss) | (Num 1PlPoss) | (Prop 1SgPoss) | (Prop 1PlPoss) | (iProp i1SgPoss) | (iProp i1PlPoss) | (DivPron 1PlPoss) ;** =
- **SET POSSESSUM2 = (N 2SgPoss) | (iN i2SgPoss) | (N 2PlPoss) | (iN i2PlPoss) ;** =
- **SET POSSESSUM3 = (N 3SgPoss) | (N 3PlPoss) | (iN i3SgPoss) | (iN i3PlPoss) | (Num 3SgPoss) | (Num 3PlPoss) | (Prop 3SgPoss) | (Prop 3PlPoss) | (iProp i3SgPoss) | (iProp i3PlPoss) | (DivPron 3PlPoss) ;** =
- **SET POSSESSUM4 = (N 4SgPoss) | (N 4PlPoss) | (iN i4SgPoss) | (iN i4PlPoss) ;** =
- **SET POSSESSUM12 = (N 1SgPoss) | (N 2SgPoss) | (iN i1SgPoss) | (iN i2SgPoss)| (N 1PlPoss) | (N 2PlPoss) | (iN i1PlPoss) | (iN i2PlPoss) ;** =

- **SET POSSESSUM = POSSESSUM12 OR POSSESSUM3 OR POSSESSUM4 ;** =
- **SET POSSESSUM3UdenMWE = POSSESSUM3 - ("Kalaallit Nunaat") - ("Kalaallit Illuutaat") - ("Kalaallit Røde Korsiat") - ("naqqup-ate") - ("Nunatsinni Inuit Innarluutillit Kattuffiat") - ("Tuluit Nunaat");** =
- **SET POSSESSUM3UdenNumPossessum = POSSESSUM3 - %NumPossessum - ("misse") - ("missaq") ;** =
- **SET NOT-POSSESSUM = N - POSSESSUM ;** =

- **SET iPOSSESSUM1 = (iN i1SgPoss) | (iN i1PlPoss) | (1SgPoss Hyb/1-2) | (1PlPoss Hyb/1-2) ;** =
- **SET iPOSSESSUM2 = (iN i2SgPoss) | (iN i2PlPoss) | (2SgPoss Hyb/1-2) | (2PlPoss Hyb/1-2);** =
- **SET iPOSSESSUM3 = (iN i3SgPoss) | (iN i3PlPoss) | (iNum i3SgPoss) | (iNum i3PlPoss) | (iProp i3SgPoss) | (iProp i3PlPoss) | (3SgPoss Hyb/1-2) | (3PlPoss Hyb/1-2);** =
- **SET iPOSSESSUM4 = (iN i4SgPoss) | (iN i4PlPoss) | (4SgPoss Hyb/1-2) | (4PlPoss Hyb/1-2);** =
- **SET iPOSSESSUM12 = (iN i1SgPoss) | (iN i2SgPoss) | (iN i1PlPoss) | (iN i2PlPoss) | (Hyb/1-2 1SgPoss) | (Hyb/1-2 2SgPoss) | (Hyb/1-2 1PlPoss) | (Hyb/1-2 2PlPoss) ;** =

- **SET iPOSSESSUM = iPOSSESSUM12 OR iPOSSESSUM3 OR iPOSSESSUM4 ;** =

- **SET APPELLATIV = N - Prop ;** =

- **SET PRON = Gram/Dem + Pron | Gram/Int + Pron | Gram/Indef + Pron | DivPron | Gram/Pers + Pron | Gram/Coref + Pron | Adj ;** =
- **SET PRON-REFL = Gram/Dem + Pron | Gram/Int + Pron | Gram/Indef + Pron | DivPron | Gram/Pers + Pron | Adj ;** = Gram/Coref + Pron har sine egne regler

- **LIST LIK_QAR = LIK QAR ("peqar");** =

- **SET NOMEN = N | iN ;** =

- **LIST ADVERBIAL_DERIVATIVES = (/VALLAAQ Der/vn N/l) ;** =

- **LIST VERBALNOMEN = NIQ (/TUQ Der/vn N/l) SSUSIQ ;** =

## Kombinationer af verber og nominer

- **LIST IV1Sg = (Abs 1Sg) (V 1Sg) ;** =
- **LIST IV2Sg = (Abs 2Sg) (V 2Sg) ;** =
- **LIST IV3Sg = (Abs Sg) (V 3Sg) ;** =
- **LIST IV4Sg = (Abs Sg) (V 4Sg) ;** =
- **LIST IV1Pl = (Abs 1Pl) (V 1Pl) ;** =
- **LIST IV2Pl = (Abs 2Pl) (V 2Pl) ;** =
- **LIST IV3Pl = (Abs Pl) (V 3Pl) ;** =
- **LIST IV4Pl = (Abs Pl) (V 4Pl) ;** =
- **SET IV_SUBJ@CODE@ = IV1Sg OR IV2Sg OR IV3Sg OR IV4Sg OR IV1Pl OR IV2Pl OR IV3Pl OR IV4Pl;** =

The **tagdeclaration.cg3** file ends here

## Regelsektion 

###  BEFORE-SECTIONS

### Disambiguere morfemkombinationer

Judithes afsnit start ### påbegyndt 20231006: sorter umulige morfemkombinationer fra

- GASAAR

-  #GIP #GISSAAR #IAR #IRNIAR #IRSIR #IRUTE #KIP #KILLI #LIR #LIRSUR #LUP #NIP #QAR

- #GIIP

- #IRNIAR #SI

- #KKAAR

- #LIAR

- #LIR

* * *
<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/disambiguator.cg3)</small>

* * *
<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/functions.cg3)</small>

# Delimiters, tags and sets

@OUTSIDE RULES@

##  Tags and sets #

### Positions and household 
BOS, EOS, CLB, Symbol, iSymbol, PUNCT, LEFT, RIGHT, COMMONAFFSTRING, EXCLMARK

### Parts of speech with tags declared as single-membered LISTs
POS tags

* LIST N = N ; 
* LIST V = V ; 
* LIST N* = N* ;  #Præprocessorens tagging af N, der indgår i compounds
* LIST iV = iV ;  #Præprocessorens tagging af V, som skifter ordklasse senere i ordet.
* LIST iN = iN ;  #Præprocessorens tagging af N, som skifter ordklasse senere i ordet.
* LIST iProp = iProp ;  #Præprocessorens tagging af Prop, som skifter ordklasse senere i ordet.
* LIST iPron = iPron ;  #Præprocessorens tagging af Pron, som skifter ordklasse senere i ordet.

### Grammar tags
Gram/... and different specifications

* LIST Gram/2sml = Gram/2sml ; 
* LIST Gram/ImpPos = Gram/ImpPos ; 
... og 10 til

### Semantic tags
Gram/... and different specifications

* LIST Sem/CognitiveMaking = Sem/CognitiveMaking;  #qinersivoq i modsætning til qinerlerpoq
* LIST Sem/Concessive = Sem/Concessive ;  #koncessive sætninger
* LIST Sem/event = Sem/event ;  
* LIST Sem/Fem = Sem/Fem ;  #Introduceret som test 20180613. Skal måske ud igen
* LIST Sem/FirstName = Sem/FirstName ; 
* LIST Sem/Geo = Sem/Geo ; 
* LIST iSem/Geo = iSem/Geo ; 
* LIST Sem/Hum = Sem/Hum <hum> ; 
* LIST Sem/Hunt = Sem/Hunt;  #qinerlerpoq i modsætning til qinersivoq

### Orthographic error tags
* LIST Orth/Alt = Orth/Alt ; 
* LIST Orth/Append = Orth/Append <append> ;  #readings added by CG (APPEND)
* LIST Orth/Arch = Orth/Arch ; 
* LIST Orth/Copy = Orth/Copy ;  #Alternative append rules
* LIST Orth/Youth = Orth/Youth ;  youth language
* LIST SUB = Orth/Arch Orth/Alt Orth/Youth ;  common tag for all

### Grammatical tags
Sg, Du, Pl, iSg, iDu, iPl, ALL_Sg, ALL_Pl, case forms, verbal inflection

### #Diverse tags defineret i kal-pre2 (dog et par hybrider her i disambiguator)

### Derivatives #

# Sets

## Alle ordklasser

* LIST WORD = N V Pali Conj Adv Interj Gram/Exclm Pron Prop Num ; 
* SET POS = WORD - (<heur> <f:[0-9]+>r) ; 

* SET NOT-PROP = WORD - Prop ; 

* SET NOT-Abbr = WORD - Gram/Abbr ; 

* SET NUM = Num | iNum ; 

* LIST NUMERAL = "ataaseq" "marluk" "pingasut" "sisamat" "tallimat" "arfineq" "arfineq marluk" "arfineq pingasut" "qulingiluat" "qulaaluat" "qulit" "aqqaneq"; 

* LIST KLOKKESLET = ("ataaseq" NNGUR) ("marluk" NNGUR) ("pingasut" NNGUR) ("sisamat" NNGUR) ("tallimat" NNGUR) ("arfineq" NNGUR) ("arfineq-marluk" NNGUR) ("arfineq-pingasut" NNGUR) ("qulingiluat" NNGUR) ("qulaaluat" NNGUR) ("qulit" NNGUR) ("aqqaneq" NNGUR); 

* SET AFFINGERET = ALLAP , ARAQ , ARSUK , IAR  , INNAQ , INNAR , INNAR_LIR 

## Verb
Ulike verbtyper.

## Nominer
Set for kasus, possessum, appellativ, ulike nomentyper

## Kombinationer af verber og nominer

* * *
<small>This (part of) documentation was generated from [src/cg3/tagdeclaration.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/tagdeclaration.cg3)</small>
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
* **+Err/Orth !!**  tag, vi ikke bruger, men som optræder i de delte filer
≈ * **+Err/Orth !!**  tag, vi ikke bruger, men som optræder i de delte filer

### Ekstra vedr. LG
* **+Der/LG12** 
* **+Der/LG13** 

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

## Flag diacritics for Greenlandic

Flag diacritics til pluralis tantum subjekter

* **@U.Num.Pl@** 
* **@U.Num.Sg@** 
* **@C.Num@** Et forsøg med Clear Feature for at håndtere *qarliuvoq vs. qarleqarpoq

Flag diacritics til verber med kun pluralis i objekterne

* **@U.ObjNum.Pl@** 
* **@U.ObjNum.Sg@** 
* **@C.ObjNum@** 

Test af boolsk variabel til ad hoc blokeringer

* **@U.Boole.On@** 
* **@U.Boole.Off@** 

Test af boolsk variabel til ad hoc blokering af Gram/Exclm. stems sættes Off og derivation On

* **@U.Exclm.On@** 
* **@U.Exclm.Off@** 

Off-flag sættes i verbs på transitive verber med usandsynlig Refl. On-flag på taggen Gram/Refl i gennemgangslexica

* **@U.Refl.On@** 
* **@U.Refl.Off@** 
* **@C.Refl@** 

* **@U.TruncTip.On@** 
* **@U.TruncTip.Off@** 
* **@C.TruncTip@** 

Off-flag på verber som akuaa, der ikke må lave metatese på NIQ

* **@U.Niq.Off@** 
* **@U.Niq.On@** 
* **@C.Niq@** 

Nyt flag 20211214 for at forebygge *taakkuunngitsoq og *taannaanngitsut

* **@U.DemPron.Sg@** 
* **@U.DemPron.Pl@** 
* **@C.DemPron@** 

Off-flag på nominer, der SKAL opføre sig replacive som pilersaarusiorpoq og aqqusinniorpoq

* **@U.Liur.Off@** 
* **@U.Liur.On@** 
* **@C.Liur@** 

Off-flag i nouns og Off-flag i der-inf  når TUR og TUGAQ ikke må assibileres og On-flag, når de skal assibileres. Også for at forebygge assibilering efter HTR på nnip

* **@U.Tur.Off@** 
* **@U.Tur.On@** 
* **@C.Tur@** 

Flag specielt for at sikre additiv p-bøjning af ulloq i Trm@

* **@U.Ulloq.Off@** 
* **@U.Ulloq.On@** 
* **@C.Ulloq@** 

Flag til forebyggelse af manglende assibilering. P sættes i stem-filerne og C i der-infl

* **@P.UsikkerAssibilering.ON@**  positive setting of UsikkerAssibilering = ON
* **@C.UsikkerAssibilering@**  clear the UsikkerAssibilering feature back to neutral

Ad hoc til test af alternativ flag diacritics ved præfikser. Husk også den udkommenterede linie 'Kingumoorutit ;' i LEXICON Root

Test af P- og D-flag til forebyggelse af rekusivitet ved TIP

* **@P.TIP.ON@** 

og blokeres af 
* **@D.TIP@** 

Test 20210504 af P- og R-flag for at generere både takornariat og takornarissat+Err/Sub

* **@P.iaq.ON@** 
* **@R.iaq.ON@** 

Flags for loan words, which must not go to N+Abs+Sg without derivation.

* **@P.Loan.i@** 
* **@D.Loan.i@** disallow test
* **@C.Loan.i@** 

* **PJAT_FOR_AT_FAA_SKIDTET_TIL_AT_KOMPILERE**  en dummy, der kan kommenteres ind og ud, når make instisterer på 'nothing to do' efter bestemte fejltyper

30.10.23: Trond tok taggane som var deklarert fleire gonger 
(sannsynlegvis tidlegare taggstrengar A=B=C) ut desse og laga 
i staden ei liste der kvar tag sto ein gong (nedanfor): docs/tagstrings.md

# List of the so-called Greenlandic *tilhæng*, i.e., derivational affixes

* **+A** 
* **+AA** 
* **+AR** 
* **+AASIILLU** 
* **+AASIINNGUUQ** 
* **+AASIIT** 
* **+AASIT** 
* **+AAT** 
* **+ALAAQ** 
* **+ALAAR** 
* **+ALLAK** 
* **+ALLAP** 
* **+ALUK** 
* **+ALUP** 
* **+ARAQ** 
* **+ARSUK** 
* **+ARSUP** 
* **+ATAAR** 
* **+ATSIAQ** 
* **+GAJUK** 
* **+GAJUP** 
* **+GAJUUQ** 
* **+GALLAR** 
* **+GALUAQ** 
* **+GALUAR** 
* **+GALUP** 
* **+GALUTTUAQ** 
* **+GALUTTUAR** 
* **+GASAAQ** 
* **+GASAAR** 
* **+GASAP** 
* **+GASUAR** 
* **+GASUGE** 
* **+GASURE** 
* **+GE** 
* **+GI** 
* **+GIAQAR** 
* **+GIAR** 
* **+GIARTUAAR** 
* **+GIARTUR** 
* **+GIIAAQ** 
* **+GIIAAR** 
* **+GIIAAT** 
* **+GIILIP** 
* **+GIIP** 
* **+GIIT** 
* **+GIP** 
* **+GISSAAR** 
* **+GUMA** 
* **+GUMAAR** 
* **+GUMALLIR** 
* **+GUMINAALLI** 
* **+GUMINAR** 
* **+GUNAR** 
* **+GUNNAAR** 
* **+GUNNAIR** 
* **+GUNNAR** 
* **+GUNNARSI** 
* **+GUP** 
* **+GUSUP** 
* **+GUUQ** 
* **+GUURUNA** 
* **+HTR** 
* **+IAR** 
* **+ILATSI** 
* **+ILIQI** 
* **+INNANNGUAQ** 
* **+INNAQ** 
* **+INNAR** 
* **+INNARIAA** 
* **+IP** 
* **+IR** 
* **+IRNIAQ** 
* **+IRNIAR** 
* **+IRSIR** 
* **+IRUSSI** 
* **+IRUTE** 
* **+IRVIK** 
* **+ISAP** 
* **+ISUA** 
* **+IT** 
* **+JA** 
* **+JAALLU** 
* **+JAAR** 
* **+JURAR** 
* **+JURTUR** 
* **+KAA** 
* **+KAJAAQ** 
* **+KANNIQ** 
* **+KANNIR** 
* **+KAR** 
* **+KASIK** 
* **+KASIP** 
* **+KASSAK** 
* **+KASSAP** 
* **+KATAAR** 
* **+KATAP** 
* **+KILLI** 
* **+KIP** 
* **+KKAAQ** 
* **+KKAAR** 
* **+KKULUK** 
* **+KKULUP** 
* **+KKUMINAR** 
* **+KKUT** 
* **+KKUUTAAQ** 
* **+KKUUTAAR** 
* **+KUJUK** 
* **+KUJUP** 
* **+KUJUUQ** 
* **+KUJUUR** 
* **+KULA** 
* **+KULAAR** 
* **+KULLAK** 
* **+KULUK** 
* **+KULUP** 
* **+KULUUQ** 
* **+KUQ** 
* **+KUSUUR** 
* **+KUTSUUR** 
* **+LA** 
* **+LAAQ** 
* **+LAAR** 
* **+LI** 
* **+LIAA** 
* **+LIAASIIT** 
* **+LIAQ** 
* **+LIAR** 
* **+LIGUUQ** 
* **+LIK** 
* **+LIKKAAQ** 
* **+LIKKIRSAAR** 
* **+LIMI** 
* **+LIP** 
* **+LIR** 
* **+LIRI** 
* **+LIRNGUSAATE** 
* **+LIRSAAR** 
* **+LIRSUR** 
* **+LIRTUR** 
* **+LISAAR** 
* **+LISAR** 
* **+LISSAAQ** 
* **+LIUKU** 
* **+LIUKUA** 
* **+LIUNA** 
* **+LIUR** 
* **+LIUTE** 
* **+LIVIK** 
* **+LLAARE** 
* **+LLAATAA** 
* **+LLAMMAK** 
* **+LLAP** 
* **+LLAQQIP** 
* **+LLAR** 
* **+LLARIP** 
* **+LLATSIAR** 
* **+LLATTAA** 
* **+LLATTAAR** 
* **+LLATUAR** 
* **+LLI** 
* **+LLIQ** 
* **+LLIR** 
* **+LLIRPAAQ** 
* **+LLIUR** 
* **+LLUAR** 
* **+LLUINNAQ** 
* **+LLUINNAQQISSAAQ** 
* **+LLUINNAR** 
* **+LU** 
* **+LUGUUQ** 
* **+LUINNAR** 
* **+LUMI** 
* **+LUMIAASIIT** 
* **+LUP** 
* **+LUQA** 
* **+LUSUUQ** 
* **+LUUNNIILLI** 
* **+LUUNNIILLU** 
* **+LUUNNIIMMI** 
* **+LUUNNIIT** 
* **+LUUR** 
* **+MAA** 
* **+MAANNA** 
* **+MAANNAA** 
* **+MAANNAAJUNA** 
* **+MAAR** 
* **+MI** 
* **+MIAA** 
* **+MIAASIINNGUUQ** 
* **+MIAASIIT** 
* **+MINIQ** 
* **+MISAAR** 
* **+MITA** 
* **+MITAAVA** 
* **+MITAAVAAKU** 
* **+MITAAVAANA** 
* **+MITAAVAMI** 
* **+MIU** 
* **+MIUQ** 
* **+MMIRSUR** 
* **+NAAR** 
* **+NAQ** 
* **+NAR** 
* **+NASUGE** 
* **+NASURE** 
* **+NAVIAR** 
* **+NAVIIR** 
* **+NAVIIRSAAR** 
* **+NGA** 
* **+NGAAQ** 
* **+NGAAR** 
* **+NGAATSIAQ** 
* **+NGAJAK** 
* **+NGAJAP** 
* **+NIAA** 
* **+NIAALUP** 
* **+NIAQ** 
* **+NIAR** 
* **+NIARIUTAA** 
* **+NIARSARE** 
* **+NIINNAR** 
* **+NIKUQ** 
* **+NIKUU** 
* **+NIP** 
* **+NIQ** 
* **+NIQAR** 
* **+NIQ_AJUR** 
* **+NIR** 
* **+NIRAR** 
* **+NIRLIUR** 
* **+NIRLUP** 
* **+NIRPAA** 
* **+NIRPAAQ** 
* **+NIRPAARPAA** 
* **+NIRPAARPAAJU** 
* **+NIRSAQ** 
* **+NIRU** 
* **+NIRUJUSSUU** 
* **+NIRUMAAQ** 
* **+NIRUMAAR** 
* **+NISAQ** 
* **+NISSAQ** 
* **+NIUP** 
* **+NIUTAA** 
* **+NIUTE** 
* **+NNAAQ** 
* **+NNAP** 
* **+NNAR** 
* **+NNGAANNIIR** 
* **+NNGAR** 
* **+NNGIR** 
* **+NNGIRSAAR** 
* **+NNGISAANNAR** 
* **+NNGIT** 
* **+NNGUALLAARE** 
* **+NNGUAQ** 
* **+NNGUAR** 
* **+NNGUARSI** 
* **+NNGUASIK** 
* **+NNGUATSIAR** 
* **+NNGUJUUR** 
* **+NNGUR** 
* **+NNGUUJUIT** 
* **+PAAQ** 
* **+PAJAAQ** 
* **+PAJAAR** 
* **+PAJUK** 
* **+PAJUP** 
* **+PAK** 
* **+PALAAQ** 
* **+PALAAR** 
* **+PALLAK** 
* **+PALLAP** 
* **+PALUK** 
* **+PALUP** 
* **+PASIP** 
* **+PIAQ** 
* **+PIAR** 
* **+PILUK** 
* **+PILUP** 
* **+PILUUR** 
* **+QANNGIT** 
* **+QAR** 
* **+QATE** 
* **+QATIGIIP** 
* **+QATIGIIT** 
* **+QATTAAR** 
* **+QE** 
* **+QENA** 
* **+QINA** 
* **+QISSAAR** 
* **+QQA** 
* **+QQAAQ** 
* **+QQAAR** 
* **+QQAJAA** 
* **+QQAJAR** 
* **+QQAMMI** 
* **+QQAMMIQ** 
* **+QQAMMIR** 
* **+QQAR** 
* **+QQARTUR** 
* **+QQATAR** 
* **+QQATUR** 
* **+QQINNAAQ** 
* **+QQINNAAR** 
* **+QQIP** 
* **+QQISSAAQ** 
* **+QQISSAAR** 
* **+QQU** 
* **+QQURTU** 
* **+QQURTUSI** 
* **+QQURTUUQ** 
* **+QQUSAAR** 
* **+QQUTE** 
* **+QQUUQE** 
* **+QQUUTE** 
* **+R** 
* **+RAALLAK** 
* **+RAAR** 
* **+RALAAQ** 
* **+RALAK** 
* **+RAR** 
* **+RASAAR** 
* **+RATAAR** 
* **+RATAR** 
* **+RIAANNAA** 
* **+RIAAT** 
* **+RIANNGUAR** 
* **+RIAQ** 
* **+RIAR** 
* **+RIATAAR** 
* **+RIIR** 
* **+RIP** 
* **+RLAAQ** 
* **+RRAK** 
* **+RRATE** 
* **+RSUR** 
* **+RUJUK** 
* **+RUJUP** 
* **+RUJUUJUTAA** 
* **+RUJUUR** 
* **+RUJUURUTAA** 
* **+RULUP** 
* **+RULUUR** 
* **+RUNAR** 
* **+RUSAAR** 
* **+RUSAQ** 
* **+RUSAR** 
* **+RUTTUR** 
* **+RUUSAAR** 
* **+SAAR** 
* **+SAR** 
* **+SARE** 
* **+SI** 
* **+SIAQ** 
* **+SII** 
* **+SILAT** 
* **+SIMA** 
* **+SIMAAR** 
* **+SINNAA** 
* **+SINNAAA** 
* **+SINNAANNGUR** 
* **+SINNAAQ** 
* **+SINNAR** 
* **+SIR** 
* **+SIUR** 
* **+SIUT** 
* **+SSA** 
* **+SSAALIQI** 
* **+SSAAR** 
* **+SSAMAAQ** 
* **+SSAMAAR** 
* **+SSAQ** 
* **+SSAQQIP** 
* **+SSI** 
* **+SSIP** 
* **+SSUAQ** 
* **+SSUSIQ** 
* **+SUAQ** 
* **+SUAR** 
* **+SUATAAR** 
* **+SUNGAR** 
* **+SUNNI** 
* **+SUNNIP** 
* **+SUR** 
* **+SURE** 
* **+T** 
* **+TA** 
* **+TAAMA** 
* **+TAAQ** 
* **+TAAR** 
* **+TAAVA** 
* **+TALLAP** 
* **+TAQ** 
* **+TAR** 
* **+TARE** 
* **+TARIAARUTE** 
* **+TARIAQ** 
* **+TARIAQAR** 
* **+TARIAR** 
* **+TASSAA** 
* **+TE** 
* **+TIGE** 
* **+TIP** 
* **+TIR** 
* **+TITAAR** 
* **+TITIR** 
* **+TSAALI** 
* **+TSAALIUR** 
* **+TSAP** 
* **+TSIALAK** 
* **+TSIAQ** 
* **+TSIAR** 
* **+TSIISAA** 
* **+TSIP** 
* **+TSIR** 
* **+TTAAQ** 
* **+TTAARLU** 
* **+TTAARMI** 
* **+TTUINNAR** 
* **+TU** 
* **+TUAQ** 
* **+TUAR** 
* **+TUARANNGUU** 
* **+TUATAAR** 
* **+TUGAQ** 
* **+TUKASSAA** 
* **+TUQ** 
* **+TUQAQ** 
* **+TUR** 
* **+TURSUU** 
* **+TURUJUSSUANNGUR** 
* **+TURUJUSSUU** 
* **+TURUJUSSUUSIMA** 
* **+TURUJUSSUUSIMAGALUAR** 
* **+TURUJUSSUUSSA** 
* **+TURUJUU** 
* **+TUSSAA** 
* **+TUSSAAGALUAR** 
* **+TUSSAANNGIKKALUAR** 
* **+TUSSAANNGIT** 
* **+TUSSANNGUR** 
* **+TUSSAQ** 
* **+TUU** 
* **+TUUQ** 
* **+TUUR** 
* **+TUUSAAR** 
* **+TUUSI** 
* **+U** 
* **+UAAR** 
* **+UKU** 
* **+UKUA** 
* **+UMA** 
* **+UMI** 
* **+UMMI** 
* **+UMMIR** 
* **+UNA** 
* **+UR** 
* **+URL** 
* **+USAAQ** 
* **+USAAR** 
* **+USAP** 
* **+USAQ** 
* **+USAR** 
* **+USIQ** 
* **+UTE** 
* **+UTIGE** 
* **+VALLAAQ** 
* **+VALLAAR** 
* **+VIK** 
* **+VIP** 
* **+VISSUAQ** 
* **+VISSUR** 
* **+VVAARIK** 
* **+VVAARIP** 
* **NIAR=TARE=LIR=GALUAR** 
* **SIMAAR=VALLAAR=LIR** 
* **TARIAQAR=LLUAR** 

### Grænsesymbol

## Symbols that need to be escaped on the lower side (towards twolc)
* »
* « ()
* > (written with square brackets as stem, to avoid collision with the morpheme boundary marker)
* < (written with square brackets as stem, to avoid collision with the morpheme boundary marker)

* **%ROD** morfemgraense ved pegeroedderne
* **+SUB**  Ungdomsformer
* **+Arch**  archaiske former som agpâ (for anípâ)
* **+Comp**  Tilfoejet 20100228. Anvendes ved +NIQ paa transitiver for skyld -neq ajor/saper/artor/nalu
* **+Coll**  Tilfoejet 20100406 til kaldenavne, der ikke er godkendte fx Aaperaat, men Aaperaa+Coll
* **+Loan**  Tilføjet 20100822 til visse udenlandske ord i hhv. LEXICON V-Loan og LEXICON C-Loan

### Vore morfofonemer

* **g2 g3 g4 c2 i2** 
* **u2**  u som skal stå som u foran r: Puurunen.
ch til Heinrich/ Heinriup men kvæler alle ch-sekvenser. Udkommenteret 20181008
* **í á ú î â û ê ô ĩ ã ũ** vokaler i gammel retskrivning

* **+CLB +PUNCT +LEFT +RIGHT** 

### Vore magiske symboler

* **%TRUNC**  minus-suffikser, trunkerer
* **%CLIT**  Klitika
* **%STRUNC**  trunkerer både vokal og konsonant
* **%PRONTRUNC** 
* **%POSSESSORTRUNC** 
* **%likTRUNC** 
* **%VCTRUNC** 
* **%CVqTRUNC** 
* **%VTRUNC** 
* **%qaGEMIN** 
* **%qoGEMIN** 
* **%EPENT** Epentetisk vokal mellem konsonant og clitis i fremmedord
* **%PROP** Blokering mod vokalreglerne
* **%ALTINF** Alternerende infinitiver ved rpoq
* **%ProgI** Tilfoejet 20100117 for at haandtere progressiv i-assimilation ved ARAQ og UTIGE

* **%GEMEQ** gemineringskode til p-bøjede på seq og leq
* **%^GEMS** 
* **%^GEMC** 
* **%^GEM** 
* **%^Loan** 

## Language-independent flag diacritics

We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

| Flag | Explanation
| --- | --- 
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation
| --- | --- 
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

| Flag | Explanation
| --- | --- 
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: København > københavner.

## LEXICON Root  pointing to main parts of speech
- **Nomen ;** 
- **Verbum ;** 
- **oqr ;**  partikler og pronominer
- **ateq ;**  proprier (baade personer og steder)
- **Punctuation ;** 
- **Symbols ;** 
- **numeralier ;** 
- **Forkortelser ;** 
- **Akronymer ;** 
- **Pronomen ;** 

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


#      G R E E N L A N D I C   G R A M M A R   C H E C K E R

```
In the catalogue for kal, do:
./autogen.sh
./configure --enable-grammarchecker --enable-spellers
make -j
cd tools/grammarcheckers
make dev
Then test as follows:  
echo "e Nerisassiornermut soqutigisaqarpit?|sh modes/trace-kalgram.mode  # from the terminal
Or eventually, write
`make check`

## Tag declaration

### Import tag declarations
We import tag declaration from `../../src/cg3/tagdeclaration.cg3`
Todo: Make disambiguation.cg3 do the same

Declare tags not declared in disambiguation.cg3
(TODO: Perhaps they should have been declared there as well)

- LIST QAR = QAR ; 

### Tags used only here

- LIST QMARK = QMARK ; 

## Grammarchecker tags

- LIST @CODE@ellipsis = @CODE@ellipsis ; 
- LIST @CODE@guillemets = @CODE@guillemets ; 
- LIST @CODE@typo = @CODE@typo ; 

- LIST @CODE@msyn-arg-trm-ins = @CODE@msyn-arg-trm-ins ; 
- LIST @CODE@msyn-arg-ins-trm = @CODE@msyn-arg-ins-trm ; 
- LIST @CODE@msyn-arg-abs-rel = @CODE@msyn-arg-abs-rel ; 

- MAPPING-PREFIX = @CODE@ ; 

## Rule section

### Speller suggestions rule
add &SUGGESTWF to any spelling suggestion
that we actually want to suggest to the user.
The simplest is to just add it to all spelled words:

ADD 

But perhaps you want to only suggest spellings of words that are not inside "quotes":

ADD 

### Grammatical rules

#### Verb valency rules

ADD 

ADD 

ADD 

ADD 

ADD  

ADD 

### Simple punctuation rules 

Rules for quotation marks.

ADD 
ADD 
ADD 

ADD 
ADD 

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

