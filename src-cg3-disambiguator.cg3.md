

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