# Kalaallisut language model documentation

All doc-comment documentation in one large file.

---

# src-cg3-dependency.cg3.md 



#                 West Greenlandic Dependency Parser

* * *

<small>This (part of) documentation was generated from [src/cg3/dependency.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/dependency.cg3)</small>

---

# src-cg3-disambiguator.cg3.md 



#    W E S T   G R E E N L A N D I C   D I S A M B I G U A T O R  #

# Delimiters, tags and sets

* 	N  =
* 	V  =
* 	N*  = Præprocessorens tagging af N, der indgår i compounds
* 	iV  = Præprocessorens tagging af V, som skifter ordklasse senere i ordet.
* 	iN  = Præprocessorens tagging af N, som skifter ordklasse senere i ordet.
* 	iProp  = Præprocessorens tagging af Prop, som skifter ordklasse senere i ordet.
* 	iPron  = Præprocessorens tagging af Pron, som skifter ordklasse senere i ordet.
* 	Gram/2sml  = ?
* 	Gram/ImpPos  = eksperimentell
* 	Gram/Int  = i brug?
* 	Gram/Indef  = i brug?
* 	Gram/Cong  =
* 	Gram/Hyb  = hybridverbum, resultat av Der/nv efter substantivflektion (men er Aeq Sg syntaktisk relevant?, tt)
* 	Gram/Pers 
* 	Gram/PersQAR   = Tag til QAR i paratakse med personligt V
* 	Gram/Coref 
* 	Gram/Dem 
* 	Gram/TransverbNIQ   = PL20210417 kun til NIQ, der kan tage direkte objekt
* 	Gram/ContSubjekt   = "dansk" subjekt tilføjet med ADDCOHORT
* 	Gram/Upersonlig   = Tag indsat i dep til konstruktioner, der oversættes med "man"
* 	Gram/Abbr 
* 	Gram/ACR 
* 	Gram/Adj  # Adjektiver optaget ubøjet og undertiden anvendt med dansk syntaks
* 	Gram/Adv-encl 
* 	Gram/Comp   = 20100228 Ny tag udelukkende til neq ajor/saper/artor/nalu (PL)
* 	Gram/Conj-encl   = sideordnende enklitiske konjunktioner
* 	Gram/Db  
* 	Gram/Exclm 
* 	Gram/Gaanni 
* 	Gram/HV 
* 	Gram/IV 
* 	Gram/TV 
* 	Gram/Ord 
* 	Gram/ImpNeg 
* 	Heur/ACR 
* 	Heur/Abbr 
* 	Heur/Mailadresse 
* 	Heur/N 
* 	Heur/Num 
* 	Heur/Prop 
* 	Heur/Quote 
* 	Heur/Twittername 
* 	Heur/Url 
* 	Sem/CognitiveMaking  = qinersivoq i modsætning til qinerlerpoq
* 	Sem/Concessive  = koncessive sætninger
* 	Sem/enter 
* 	Sem/event 
* 	Sem/Fem  = Introduceret som test 20180613. Skal måske ud igen
* 	Sem/FirstName 
* 	Sem/Hunt  = qinerlerpoq i modsætning til qinersivoq

* 	Orth/Alt 
* 	Orth/Arch 
* 	Orth/Copy  = Alternative append rules
* 	Orth/Append  = Alternative append rules
* 	Orth/Youth  youth language
- **1SgPoss** =
- **2SgPoss** =
- **3SgPoss** =
- **4SgPoss** =
- **1PlPoss** =
- **2PlPoss** =
- **3PlPoss** =
- **4PlPoss** =
- **i1SgPoss** =
- **i2SgPoss** =
- **i3SgPoss** =
- **i4SgPoss** =
- **i1PlPoss** =
- **i2PlPoss** =
- **i3PlPoss** =
- **i4PlPoss** =
- **1SgO** =
- **2SgO** =
- **3SgO** =
- **4SgO** =
- **1PlO** =
- **2PlO** =
- **3PlO** =
- **4PlO** =
- **A*** =
- **A** =
- **ALLAP** =
- **ARAQ** =
- **ARSUK** =
- **GASAAR** =
- **IAR** =
- **INNAQ** =
- **INNAR** =

##  Tags and sets #

### Positions and household

The following tags:
BOS, EOS, CLB, Symbol, iSymbol, PUNCT, LEFT, RIGHT, COMMONAFFSTRING, EXCLMARK

### Parts of speech with tags declared as single-membered LISTs

### Grammar tags
Gram/... and different specifications

* LIST DivPron = Gram/Cong DivPron ;  = ?
* LIST Gram/Ord = Gram/Ord Der/Ord ;   =  Ordinaltal #Hedder Der/Ord i den videre kæde.

### Orthographic error tags
* LIST Orth/Append = Orth/Append <append> ;  = readings added by CG (APPEND)
* LIST SUB = Orth/Arch Orth/Alt Orth/Youth ;  common tag for all

### Heur Prop case tags

### Heur der tags for iCase to block Abs Pl Heur/Prop analysis

### Heur Verb tags to block Abs Sg Heur/Prop analysis

### Heur GL final

### Heur FOREIGN final prop

### Heur FOREIGN initial prop

### Heur scan err

### Heur Excl tags to block Abs Sg Heur/Prop analysis

### Grammatical tags
Sg, Du, Pl, iSg, iDu, iPl, ALL_Sg, ALL_Pl, case forms, verbal inflection

### #Diverse tags defineret i kal-pre2 (dog et par hybrider her i disambiguator)

### Derivatives

- **LIST IP = IP ("IP") ;** =

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

* LIST NUMERAL = "ataaseq" "marluk" "pingasut" "sisamat" "tallimat" "arfineq" "arfineq marluk" "arfineq pingasut" "qulingiluat" "qulaaluat" "qulit" "aqqaneq" "fireogfyrre"; 

* LIST KLOKKESLET = ("ataaseq" NNGUR) ("marluk" NNGUR) ("pingasut" NNGUR) ("sisamat" NNGUR) ("tallimat" NNGUR) ("arfineq" NNGUR) ("arfineq-marluk" NNGUR) ("arfineq-pingasut" NNGUR) ("qulingiluat" NNGUR) ("qulaaluat" NNGUR) ("qulit" NNGUR) ("aqqaneq" NNGUR); 

* SET AFFINGERET = ALLAP , ARAQ , ARSUK , IAR  , INNAQ , INNAR

## Verb

Ulike verbtyper.

**TRANSVERB** = 1SgO, 2SgO, 3SgO, 4SgO, 1PlO, 2PlO, 3PlO, 4PlO
- **SET INTRANSVERB = V - TRANSVERB ;** =
- **VFIN** = Ind, Opt, Int; Imp
- **SET DOTR = Gram/Db | (/__Gram/TV QQU__/l) | (/__Gram/TV TIP__/l) | (/__Gram/TV SAR__/l) | ("ussersuup") | (/__Gram/TV UTE Gram/vv__/l) ;** =
- **LIST 3SGSUBJVERB = (V 3Sg) ;** =
- **LIST 3PLSUBJVERB = (V 3Pl) ;** =
- 34SGOBJVERB = 3SgO, 4SgO
- 34PLOBJVERB = 3PlO,  4PlO
- **SET VERBNOT3SGSUBJ = V - 3SGSUBJVERB ;** =
- **SET VERBNOT3PLSUBJ = V - 3PLSUBJVERB ;** =
- **SET COREF = (V 4Sg) OR (V 4Pl) ;** =
- **SET 12SUBJVERB = (V 1Sg) OR (V 1Du) OR (V 1Pl) OR (V 2Sg) OR (V 2Du) OR (V 2Pl) ;** =
- **SET PLURSUBJVERB = (V 1Pl) OR (V 2Pl) OR (V 3Pl) OR (V 4Pl) ;** =
- **SET PLUROBJVERB = (V 1PlO) OR (V 2PlO) OR (V 3PlO) OR (V 4PlO) ;** =
- **SET V-NOT-Par = V - Par ;** =
- **SET VERB-NOTCONT = V - Cont - ContNeg;** =
- **SET CONT = Cont OR ContNeg;** =
- **SET CONT_INTRANS = CONT - TRANSVERB ;** = Til brug i BARRIER
- **SET CON_CAU = Con OR Cau ;** =
- **LIST PASSIV = (GE SIMA) NIQAR (/Gram/TV (iSem/.* )?TAQ Der/vn (iSem/.* )?U/l) (/TIP Der/vv Gram/TV TAQ Der/vn N/l) (/Gram/Db TAQ Der/vn U/l);** =
- **SET PASSIV_ALTERNATIV = NIQAR OR (/Gram/TV TAQ Der/vn U/l) OR (/Gram/TV (Gram/Refl )?Gram/IV NIQ Der/vn IRUTE/l) ;** = PL ny 20190630 fordi (GE SIMA) forekommer for farlig
- **LIST NO_HTR = "allap" ;** = 20091108 - Verber, der ikke kan kombinere med HTR
- **SET SchwaDerivativ = GE OR TARE OR QE OR SURE ;** =
- **SET PERSON = 1Sg OR 2Sg OR 3Sg OR 4Sg OR 1Pl OR 2Pl OR 3Pl OR 4Pl ;** =
- **SET PROP = Prop OR iProp ;** =
- **SET GAANNI = (/"<.*[g|k|r]aanni.*>"/r) + Par + 3Sg + 3SgO OR (/"<.*[g|k|r]aanni.*>"/r) + Par + 3Sg + 3PlO OR (/"<.*[g|k|r]aanni.*>"/r) + Par + 4Sg OR (/"<.*[g|k|r]aanni.*>"/r) + Par + 3Sg ;** =#20180805: intransitiv GAANNI bliver 3Sg og ikke 4Sg som hidtil.
- **SET MOOD = VFIN OR CONT OR Cau OR IteCau OR Con OR Par ;** =

- **SET PILLUGU = ("pi" Cont) - AFFINGERET OR ("pi" ContNeg) - AFFINGERET;** =
- **SET PISSUTIGALUGU = ("pissut" GE Cont) OR ("pissut" GE ContNeg) ;** =
- **SET PEQQUTIGALUGU = ("peqqut" GE Cont) OR ("peqqut" GE ContNeg) ;** =
- **SET AQQUSAARLUGU = ("aqqusaar" Cont) OR ("aqqusaar" ContNeg) ;** =
- **SET ATORLUGU = ("ator" Cont) - AFFINGERET OR ("ator" ContNeg) - AFFINGERET ;** =
- **SET ILAGALUGU = ("ila" GE Cont) OR ("ila" GE ContNeg) ;** =
- **SET KILLEQQULLUGU = ("killeqqup" Cont) - AFFINGERET OR ("killeqqup" ContNeg) - AFFINGERET ;** =
- **SET MALILLUGU = ("malip" Cont) - AFFINGERET OR ("malip" ContNeg) - AFFINGERET ;** =
- **SET NAAPERTORLUGU = ("naapertor" Cont) - AFFINGERET OR ("naapertor" ContNeg) - AFFINGERET ;** =
- **SET SINNERLUGU = ("sinner" Cont) - AFFINGERET ;** =
- **SET TAMAKKERLUGU = ("tamakker" Cont) - AFFINGERET OR ("tamakker" ContNeg) - AFFINGERET ;** =
- **SET TIKILLUGU = ("tikip" Cont) - AFFINGERET OR ("tikip" ContNeg) - AFFINGERET ;** =
- **SET TUNNGAVIGALUGU = ("tunnga" VIK GE Cont) OR ("tunnga" VIK GE ContNeg) ;** =
- **SET OBJVERB = PEQQUTIGALUGU OR PILLUGU OR PISSUTIGALUGU OR AQQUSAARLUGU OR ATORLUGU OR ILAGALUGU OR MALILLUGU OR NAAPERTORLUGU OR SINNERLUGU OR TAMAKKERLUGU OR TIKILLUGU OR TUNNGAVIGALUGU ;** =
- **LIST NONOBJVERB = ("agguar" QATE GIIP TIP Cont) ;** =

## Nominer
Set for kasus, possessum, appellativ, ulike nomentyper

- **SET KASUS = Abs OR Rel OR Trm OR Abl OR Lok OR Aeq OR Ins OR Via ;** =
- **SET NOT-REL = KASUS - Rel ;** =
- **SET OBLIQUE = Trm OR Abl OR Lok OR Aeq OR Ins OR Via ;** =
- **SET iOBLIQUE = iTrm OR iAbl OR iLok OR iAeq OR iIns OR iVia OR Trm + Hyb/1-2 OR Abl + Hyb/1-2 OR Lok + Hyb/1-2 OR Aeq + Hyb/1-2 OR Ins + Hyb/1-2 OR Via + Hyb/1-2 ;** =
- **SET NUMERUS = Sg OR Pl ;** =
- **SET KONGRUENSADLED = N + $$KASUS + $$NUMERUS ;** =
- **SET ALL_OBLIQUE = OBLIQUE OR iOBLIQUE ;** =

- **SET 3PlPossUdenMWE = 3PlPoss - ("Kalaallit Nunaat") - ("Kalaallit Illuutaat") - ("Kalaallit Røde Korsiat") - ("naqqup-ate") - ("nunap inoqqaavi") - ("Nunatsinni Inuit Innarluutillit Kattuffiat") - ("sapaatip-akunneq") - ("Tuluit Nunaat") - ("Zombiet Nunaat");** =
- **SET POSSESSUM1 = (N 1SgPoss) OR (iN i1SgPoss) OR (N 1PlPoss) OR (iN i1PlPoss) OR (Num 1SgPoss) OR (Num 1PlPoss) OR (Prop 1SgPoss) OR (Prop 1PlPoss) OR (iProp i1SgPoss) OR (iProp i1PlPoss) OR (DivPron 1PlPoss) ;** =
- **SET POSSESSUM2 = (N 2SgPoss) OR (iN i2SgPoss) OR (N 2PlPoss) OR (iN i2PlPoss) ;** =
- **SET POSSESSUM3 = (N 3SgPoss) OR (N 3PlPoss) OR (iN i3SgPoss) OR (iN i3PlPoss) OR (Num 3SgPoss) OR (Num 3PlPoss) OR (Prop 3SgPoss) OR (Prop 3PlPoss) OR (iProp i3SgPoss) OR (iProp i3PlPoss) OR (DivPron 3PlPoss) ;** =
- **SET POSSESSUM4 = (N 4SgPoss) OR (N 4PlPoss) OR (iN i4SgPoss) OR (iN i4PlPoss) ;** =
- **SET POSSESSUM12 = (N 1SgPoss) OR (N 2SgPoss) OR (iN i1SgPoss) OR (iN i2SgPoss)| (N 1PlPoss) OR (N 2PlPoss) OR (iN i1PlPoss) OR (iN i2PlPoss) ;** =

- **SET POSSESSUM = POSSESSUM12 OR POSSESSUM3 OR POSSESSUM4 ;** =
- **SET POSSESSUM3UdenMWE = POSSESSUM3 - ("Kalaallit Nunaat") - ("Kalaallit Illuutaat") - ("Kalaallit Røde Korsiat") - ("naqqup-ate") - ("Nunatsinni Inuit Innarluutillit Kattuffiat") - ("Tuluit Nunaat");** =
- **SET POSSESSUM3UdenNumPossessum = POSSESSUM3 - %NumPossessum - ("misse") - ("missaq") ;** =
- **SET NOT-POSSESSUM = N - POSSESSUM ;** =

- **SET iPOSSESSUM1 = (iN i1SgPoss) OR (iN i1PlPoss) OR (1SgPoss Hyb/1-2) OR (1PlPoss Hyb/1-2) ;** =
- **SET iPOSSESSUM2 = (iN i2SgPoss) OR (iN i2PlPoss) OR (2SgPoss Hyb/1-2) OR (2PlPoss Hyb/1-2);** =
- **SET iPOSSESSUM3 = (iN i3SgPoss) OR (iN i3PlPoss) OR (iNum i3SgPoss) OR (iNum i3PlPoss) OR (iProp i3SgPoss) OR (iProp i3PlPoss) OR (3SgPoss Hyb/1-2) OR (3PlPoss Hyb/1-2);** =
- **SET iPOSSESSUM4 = (iN i4SgPoss) OR (iN i4PlPoss) OR (4SgPoss Hyb/1-2) OR (4PlPoss Hyb/1-2);** =
- **SET iPOSSESSUM12 = (iN i1SgPoss) OR (iN i2SgPoss) OR (iN i1PlPoss) OR (iN i2PlPoss) OR (Hyb/1-2 1SgPoss) OR (Hyb/1-2 2SgPoss) OR (Hyb/1-2 1PlPoss) OR (Hyb/1-2 2PlPoss) ;** =

- **SET iPOSSESSUM = iPOSSESSUM12 OR iPOSSESSUM3 OR iPOSSESSUM4 ;** =

- **SET APPELLATIV = N - Prop ;** =

- **SET PRON = Gram/Dem + Pron OR Gram/Int + Pron OR Gram/Indef + Pron OR DivPron OR Gram/Pers + Pron OR Gram/Coref + Pron OR Adj ;** =
- **SET PRON-REFL = Gram/Dem + Pron OR Gram/Int + Pron OR Gram/Indef + Pron OR DivPron OR Gram/Pers + Pron OR Adj ;** = Gram/Coref + Pron har sine egne regler

- **LIST LIK_QAR = LIK QAR ("peqar");** =

- **SET NOMEN = N OR iN ;** =

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
- **SET IV_SUBJ& = IV1Sg OR IV2Sg OR IV3Sg OR IV4Sg OR IV1Pl OR IV2Pl OR IV3Pl OR IV4Pl;** =

- **SET IV_SG_SUBJ& = IV1Sg OR IV2Sg OR IV3Sg OR IV4Sg ;**
- **SET IV_PL_SUBJ& = IV1Pl OR IV2Pl OR IV3Pl OR IV4Pl;**

- **LIST POSS34Sg_POSSSg = (Rel Sg) (3SgPoss Sg) ;**
- **LIST POSS34Sg_POSSPl = (Rel Sg) (3SgPoss Pl) ;**
- **LIST POSS34Pl_POSSSg = (Rel Pl) (3PlPoss Sg) ;**
- **LIST POSS34Pl_POSSPl = (Rel Pl) (3PlPoss Pl) ;**
- **LIST NUM34POSSSg = (Rel Num) (3SgPoss) ;**
- **LIST NUM34POSSPl = (Rel Num) (3PlPoss) ;**

- **SET POSS34_POSS& = POSS34Sg_POSSSg OR POSS34Sg_POSSPl OR POSS34Pl_POSSSg OR POSS34Pl_POSSPl OR NUM34POSSSg OR NUM34POSSPl;**

Objekts-set introduceret 20170416 - virkede ikke

- **LIST SgObjekt = (Abs Sg) 3SgO ;**
- **LIST PlObjekt = (Abs Pl) 3PlO ;**

Unification set til SUBJ med tilhørende TRANSVERB. Reformulering med objekter påbegyndt 20190519

- **LIST SUBJ1S2SO = (Rel 1Sg) (1Sg 2SgO);**
- **LIST SUBJ1S3SO = (Rel 1Sg) (1Sg 3SgO);**
- **LIST SUBJ1S4SO = (Rel 1Sg) (1Sg 4SgO);**
- **LIST SUBJ1S2PO = (Rel 1Sg) (1Sg 2PlO);**
- **LIST SUBJ1S3PO = (Rel 1Sg) (1Sg 3PlO);**
- **LIST SUBJ1S4PO = (Rel 1Sg) (1Sg 4PlO);**
- **LIST SUBJ2S1SO = (Rel 2Sg) (2Sg 1SgO);**
- **LIST SUBJ2S3SO = (Rel 2Sg) (2Sg 3SgO);**
- **LIST SUBJ2S4SO = (Rel 2Sg) (2Sg 4SgO);**
- **LIST SUBJ2S1PO = (Rel 2Sg) (2Sg 1PlO);**
- **LIST SUBJ2S3PO = (Rel 2Sg) (2Sg 3PlO);**
- **LIST SUBJ2S4PO = (Rel 2Sg) (2Sg 4PlO);**
- **LIST SUBJ3S1SO = (Rel Sg) (3Sg 1SgO) ;**
- **LIST SUBJ3S2SO = (Rel Sg) (3Sg 2SgO) ;**
- **LIST SUBJ3S3SO = (Rel Sg) (3Sg 3SgO) ;**
- **LIST SUBJ3S4SO = (Rel Sg) (3Sg 4SgO) ;**
- **LIST SUBJ3S1PO = (Rel Sg) (3Sg 1PlO) ;**
- **LIST SUBJ3S2PO = (Rel Sg) (3Sg 2PlO) ;**
- **LIST SUBJ3S3PO = (Rel Sg) (3Sg 3PlO) ;**
- **LIST SUBJ3S4PO = (Rel Sg) (3Sg 4PlO) ;**
- **LIST SUBJ4S1SO = (Rel Sg) (4Sg 1SgO) ;**
- **LIST SUBJ4S2SO = (Rel Sg) (4Sg 2SgO) ;**
- **LIST SUBJ4S3SO = (Rel Sg) (4Sg 3SgO) ;**
- **LIST SUBJ4S1PO = (Rel Sg) (4Sg 1PlO) ;**
- **LIST SUBJ4S2PO = (Rel Sg) (4Sg 2PlO) ;**
- **LIST SUBJ4S3PO = (Rel Sg) (4Sg 3PlO) ;**
- **LIST SUBJ1P2SO = (Rel 1Sg) (1Pl 2SgO);**
- **LIST SUBJ1P3SO = (Rel 1Sg) (1Pl 3SgO);**
- **LIST SUBJ1P4SO = (Rel 1Sg) (1Pl 4SgO);**
- **LIST SUBJ1P2PO = (Rel 1Sg) (1Pl 2PlO);**
- **LIST SUBJ1P3PO = (Rel 1Sg) (lPl 3PlO);**
- **LIST SUBJ1P4PO = (Rel 1Sg) (1Pl 4PlO);**
- **LIST SUBJ2P1SO = (Rel 2Pl) (2Sg 1SgO);**
- **LIST SUBJ2P3SO = (Rel 2Pl) (2Sg 3SgO);**
- **LIST SUBJ2P4SO = (Rel 2Pl) (2Sg 4SgO);**
- **LIST SUBJ2P1PO = (Rel 2Pl) (2Sg 1PlO);**
- **LIST SUBJ2P3PO = (Rel 2Pl) (2Sg 3PlO);**
- **LIST SUBJ2P4PO = (Rel 2Pl) (2Sg 4PlO);**
- **LIST SUBJ3P1SO = (Rel Pl) (3Pl 1SgO) ;**
- **LIST SUBJ3P2SO = (Rel Pl) (3Pl 2SgO) ;**
- **LIST SUBJ3P3SO = (Rel Pl) (3Pl 3SgO) ;**
- **LIST SUBJ3P4SO = (Rel Pl) (3Pl 4SgO) ;**
- **LIST SUBJ3P1PO = (Rel Pl) (3Pl 1PlO) ;**
- **LIST SUBJ3P2PO = (Rel Pl) (3Pl 2PlO) ;**
- **LIST SUBJ3P3PO = (Rel Pl) (3Pl 3PlO) ;**
- **LIST SUBJ3P4PO = (Rel Pl) (3Pl 4PlO) ;**
- **LIST SUBJ4P1SO = (Rel Pl) (4Pl 1SgO) ;**
- **LIST SUBJ4P2SO = (Rel Pl) (4Pl 2SgO) ;**
- **LIST SUBJ4P3SO = (Rel Pl) (4Pl 3SgO) ;**
- **LIST SUBJ4P1PO = (Rel Pl) (4Pl 1PlO) ;**
- **LIST SUBJ4P2PO = (Rel Pl) (4Pl 2PlO) ;**
- **LIST SUBJ4P3PO = (Rel Pl) (4Pl 3PlO) ;**

SUBJTRANSVERB er alle ovenfor

- **LIST KOMPARATIV = NIRU (/"qanip" Gram/IV NIQ/l) (/NIQ Der/vn RUJUK Der/nn SUAQ Der/nn U/l) (/"amerla" Gram/IV NIQ Der/vn N/l);**

- **LIST NÆPPE_OBJ = ("nuanner" TUQ) (/"toqqa" Gram/IV INNAR/l TUQ) ("isertuanngitsoq" Ins) ("isertuar" Ins);**
- **LIST NÆPPE_SUBJ = ("nalinginnaq") ;**
- **LIST NÆPPE_KOMPARATIV = (/"eqquup" Gram/IV TIP Der/vv Gram/TV HTR Der/vv Gram/IV NIQ/l) (/"unioqqup" Gram/IV TIP Der/vv Gram/TV HTR Der/vv Gram/IV NIQ/l);** Leksikaliseringer som normalt analyseres som NIQ+U frem for NIRU
- **LIST AGENS_NOUN = ("katersugaq") ;**

- **SET IVTVSUBJ& = IV_SUBJ& | SUBJTRANSVERB& ;**

Unification set til CONT og subjekter, kun for intransitive CONT.
- **LIST ContSg = (Sg Abs) 4Sg ;**
- **LIST ContPl = (Pl Abs) 4Pl ;**
- **SET Cont& = ContSg OR ContPl ;**

Unification set til CONT og kongruente V ved intransitive V

!!! Partikler

### Lexical sets

- **LIST TASSA = "tassa" ("tass" Gram/Dem Interj);**

#### Verbernes leksikalske klasser

### Semantic tags
Gram/... and different specifications

* LIST Sem/Hum = Sem/Hum <hum> ; 

## Regelsektion

###  BEFORE-SECTIONS

### Disambiguere morfemkombinationer

Judithes afsnit start ### påbegyndt 20231006: sorter umulige morfemkombinationer fra

- GASAAR

-  #GIP #GISSAAR #IAR #IRNIAR #IRSIR #IRUTE #KIP #KILLI #LIR #LIRSUR #LUP #NIP #QAR

- #IRNIAR #SI

- #LIAR

* * *

<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/disambiguator.cg3)</small>

---

# src-cg3-functions.cg3.md 



W E S T   G R E E N L A N D I C   S Y N T A C T I C   F U N C T I O N S

- Delimiters (line 47)
- Tags and sets
	- Positions and household (line 53)
	- Parts of speech (line 60)
	- Derivatives (line 152)
	- Tilhængspartikler (line 812)
	- Syntactic and morphological sets
		- Generelt for alle ordklasser (linie 854)
		- Verber (linie 862):
		- Nominer (linie 885)
		- Partikler (linie 900)
	- Lexical sets (907)
		- Verberne (linie 910)
		- Nominerne (linie 931)
	- Tags (line 965)
- RULES
	- Mapping rules
		- Verber - De sikre MAP regler (1046)
		- Nominer - De sikre MAP regler (1054)
		- Nominer - ADD regler (1062)
		- Adjektiver - både ADD og MAP regler (line 1087)
		- Partikler (1120)
		- Numeralier
	- Disambiguation rules (linie 1175)
		- Frequent and safe rules - all wordclasses (1435)
		- SELECT og REMOVE verber (
		- SELECT and REMOVE participles (1460)
		- SELECT og REMOVE nominer (
- One-cohort disambiguation - cycle 0
- Local disambiguation - cycles 1
	      - Global disambiguation - cycles 2
- Syntactic disambiguation

Ny indholdsfortegnelse påbegyndt 20201015

Begyndende udkommentering af REMOVE og SELECT, der kun skal stå i disambiguator. Vil blive udkommenteret med '#DATO' fx '#20210704'. Færdiggjort 20230726.
Begyndende sletning hvor REMOVE og SELECT står med #

## Regelsektion

Delimiter

* * *

<small>This (part of) documentation was generated from [src/cg3/functions.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/functions.cg3)</small>

---

# src-fst-morphology-affixes-derivations-inflections.lexc.md 


# Fil for at generere de centrale morfologiske processer i vor grønlandske analysator               

* LEXICON ZseqZ  qalaseq

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

* LEXICON Z1+ssZ  

* LEXICON Z1+niuZ  

* LEXICON Z1+maZ  

* LEXICON Z1+meZ  

- LEXICON N_Loan_ACR_morf  Derivationsmorfemer til akronymer som BMW, IT etc. som er nominale og kan bøjes
	 -  N_Loan_ACR_infl ;   !PL20240511 nyt fortsættelseslex

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/derivations-inflections.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/derivations-inflections.lexc)</small>

---

# src-fst-morphology-affixes-noun_to_noun.lexc.md 



* LEXICON GEMS  = Gennemgangsleksikon til nominer der geminerer til stop-lyd ved fleksion, fx meeqqap
* 0:^GEMS Z1Zmorf ; 

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

* LEXICON SIKgemin  derivationsmorfemer til nominer som ikusik:iku

* LEXICON SUKgemin  derivationsmorfemer til nominer som pukusuk:puku

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

* LEXICON Z1+ssZmorf  derivationsmorfemer til nominer

* LEXICON Z1+niuZmorf  derivationsmorfemer til niu

* LEXICON Z1+maZmorf  derivationsmorfemer til nominer som isuma

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

* LEXICON Z1nujaqZmorf  typen nujaq+Der/nn:nu

* LEXICON Z1joqZmorf  typen pujoq+Der/nn:pu

* LEXICON Z1+ngaZmorf  typen sapangaq+Der/nn:sapan

* LEXICON Z1+ngeZmorf  typen iviangeq+Der/nn:ivian

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/noun_to_noun.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/noun_to_noun.lexc)</small>

---

# src-fst-morphology-affixes-numerals.lexc.md 

#  Arabiske numeralier 

## Inflection and derivation.

** Lexicon **num_C** for numerusmorfologi for ord på konsonant
- **	%%	num_C ; ** tilfoejet loop 20090306 for at klare former som 83%-ii
- **	°	num_C ; **  tilfoejet loop 20210502 for at klare former som 5°-imiippoq
- **+Num+Abs+Sg:%>-%EPENT	indholds-K ; **  
- **+Num+Abs+Sg: # ; **  
- **+Num+Abs+Pl:%>-it	Krestr ; **  
- **+Err/Sub+Num+Abs+Pl:%>-t	Krestr ; **  
- **+Num+Abs+Sg+3SgPoss:%>-ia	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3SgPoss:%>-a	Krestr ; **  

** Lexicon **num_V** for numerusmorfologi for ord på vokal
- **	%%	num_C ;  **  tilfoejet 20090306 for at haandtere ord som 49%-ii
- **+Num+Abs+Sg:%>-	indholds-K ;	 ** 
- **+Err/Sub+Num+Abs+Sg:%>-i	indholds-K ;	 ** 
- **+Num+Abs+Sg:	# ;	 ** 
- **+Num+Abs+Pl:	# ;	 **  PL20220121 45 min.
- **+Num+Abs+Pl:%>-t	K ;  ** 
- **+Err/Sub+Num+Abs+Pl:%>-it	K ;  ** 
- **+Num+Abs+Sg+3SgPoss:%>-a	Krestr ;  ** 
- **+Err/Sub+Num+Abs+Sg+3SgPoss:%>-ia	Krestr ;  ** 
- **+Num+Abs+Sg+3PlPoss:%>-at	Krestr ;  ** 
- ... osb.

** Lexicon **num_C_sub** for numerusmorfologi for ord på konsonant, substandarformer
- **+Err/Sub+Num+Abs: # ; **  
- **+Err/Sub+Num+Abs+Pl:%>	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3SgPoss:%>ia	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3SgPoss:%>%TRUNCa	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3PlPoss:%>iat	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3PlPoss:%>%TRUNCat	Krestr ; **   1-at
- **+Err/Sub+Num+Rel:%>ip	Krestr ; **  
- **+Err/Sub+Num+Rel:%>%TRUNCp	Krestr ; **  
- ...
- **+Err/Sub+Num+Lok:%>imi	LokVb ; **  
- **+Err/Sub+Num+Lok:%>%TRUNCmi	LokVb ; **  
- **+Err/Sub+Num+Lok:%>mi	LokVb ; **  
- **+Err/Sub+Num+Lok:%>ini	LokVb ; **  
- **+Err/Sub+Num+Lok:%>%TRUNCni	LokVb ; **  
- **+Err/Sub+Num+Lok:%>ni	LokVb ; **  
- **+Err/Sub+Num+Lok+Sg+3SgPoss:%>iani	LokVb ; **  
- **+Err/Sub+Num+Lok+Sg+3SgPoss:%>%TRUNCani	LokVb ; **  
- **+Err/Sub+Num+Lok+Sg+3PlPoss:%>ianni	LokVb ; **  
- **+Err/Sub+Num+Lok+Sg+3PlPoss:%>%TRUNCanni	LokVb ; **   1-anni
- **+Err/Sub+Num+Lok+Pl+3SgPoss:%>iini	LokVb ; **  
- **+Err/Sub+Num+Lok+Pl+3SgPoss:%>%TRUNCini	LokVb ; **  
- **+Err/Sub+Num+Lok+Pl+3PlPoss:%>iini	LokVb ; **  
---

** Lexicon **num_V_sub** for numerusmorfologi for ord på vokal, substandarformer
- **+Err/Sub+Num+Abs:%>	# ;	 **  
- **+Err/Sub+Num+Abs:%>	indholds-K ;	 **  
- **+Err/Sub+Num+Abs+Sg+3SgPoss:%>a	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3SgPoss:%>ia	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3PlPoss:%>at	Krestr ; **  
- **+Err/Sub+Num+Abs+Sg+3PlPoss:%>iat	Krestr ; **  
- ...

** Lexicon **ord_V** for ordinalmorfologi for ord på vokal
- **+Gram/Ord+Abs+Sg+3SgPoss:%>a	Krestr ; **  
- **+Gram/Ord+Abs+Sg+3PlPoss:%>at	Krestr ; **  
- **+Gram/Ord+Abs+Pl+3SgPoss:%>i	K_plur ; **  
- **+Gram/Ord+Abs+Pl+3PlPoss:%>i	K_plur ; **  
- **+Gram/Ord+Rel:%>p	Krestr ; **  
- ...

** Lexicon **ord_C** for ordinalmorfologi for ord på konsonant
 - **+Gram/Ord+Abs+Sg+3SgPoss:%>ia	Krestr ; **  
- **+Gram/Ord+Abs+Sg+3PlPoss:%>iat	Krestr ; **  
- **+Gram/Ord+Abs+Pl+3SgPoss:%>ii	K_plur ; **  
- **+Gram/Ord+Abs+Pl+3PlPoss:%>ii	K_plur ; **  
- **+Gram/Ord+Rel:%>ip	Krestr ; **  

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/numerals.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/numerals.lexc)</small>

---

# src-fst-morphology-affixes-propernouns.lexc.md 

# Propriernes morfologi i grønlandsk

Nyt 20210303: indsættelse af bindestreg og bindestreg+i ved proprier, der samtidig er akronymer
** Lexicon **Vprop_connector**  DMI

** Lexicon **Cprop_connector**  DHL

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

* LEXICON Z1geo_oqsZ_MedPlur   Langtbortistan

* LEXICON Z1geo_oqsetZmorf   Atlanterhavet
** Lexicon **Z1geo_oqsetZ**  

** Lexicon **Z1geo_oqs-bestZ**  

* LEXICON Z1geo_oqseZ   Thule
** Lexicon **Z1geo_oqseZ-suf**  

* LEXICON Z2-geoSZ   Ikerasaarsuk og Iqaluit

* LEXICON Z2-geoSZ_TUQAQ   Nuutoqaq

* LEXICON Z2+lgeoSZ   Nanortalik:Nanorta

* LEXICON Z2-geo_uukSZ   Nuuk

* LEXICON Z2-geo_specielSZ   Qinngorput – Qinngorpummi, Qinngorpumi

* LEXICON Z2-geoqPZ   Saqqarliit

* LEXICON Z2-geolikPZ   Kapisillit:Kapisi

* LEXICON Z2geo_aqSZ   Nuussuaq

** Lexicon **ZcitationsformZ**   Et særligt lexicon til literals i citationstegn med placeholder QuotedHyphen (står i acronyms.lexc)

** Lexicon **ZcitationsformZ_Num**   Copy of ZcitationsformZ, but yielding Num

** Lexicon **Bogtitel**  Nyt lex til bogtitler uden citationstegn

** Lexicon **Z1ateqZ_infl**  

** Lexicon **Z1ateq_tptZ**  

** Lexicon **Z1ateq_atZ**  

** Lexicon **Z1ateq_gaqZ**  

** Lexicon **Z1ateq_ngaqZ**  

** Lexicon **Z1ateq_goqZ**  

** Lexicon **Z1ateq_qoqZ**  

** Lexicon **Z1ateq_taqZ**  

** Lexicon **Z1ateq_seqZ**  

** Lexicon **Z1ateq_leqZ**  

** Lexicon **Z1ateq_saqZ**  

** Lexicon **Z1ateq+qaZ**  

** Lexicon **Z1ateq+ĸaZ**  

** Lexicon **Zateq_tptZ**  Atassut

** Lexicon **Z1ateqPZ**  

** Lexicon **Z1ateqPZ-suf**  

** Lexicon **Z2-ateqZ**  

:- Z2-ateqZ-suf ;     !SUB

** Lexicon **Z2-ateqZ-suf**  

** Lexicon **Z1ateqpropVZ**  

** Lexicon **Z1instpropVZ**  

** Lexicon **Z1ateqpropCZ**  

** Lexicon **Z2ateq_niqZ**  

** Lexicon **Z2ateq_neqZ**  

** Lexicon **Z2suaq_ateqZ**  

** Lexicon **Z2-ateq_specielSZ**  Siumut – Siumummi, Siumumi

** Lexicon **Z1nnguaq_ateqZ**  

** Lexicon **Z1nnguaq_possessumZ**  PL20220201 LEX til sekvensen UTE=NNGUAQ + POSSESSUM

** Lexicon **Zateq_oqsZ**  
** Lexicon **Zateq_oqsZ-suf**  

** Lexicon **Zateq_oqsPZ**  PL20210224 til Kalaallit Airports o.lign. med usikker numerus. I første omgang uden derivation og personendelser

** Lexicon **Zateq_iaqZ**  

** Lexicon **Zateq_iaĸZ**  

** Lexicon **Zateq_ioqZ**  

** Lexicon **Zateq_naqZ**  

** Lexicon **Zateq_noqZ**  

** Lexicon **Zateq_meqZ**  

** Lexicon **Z1geoSZmorf**  Narsaq

** Lexicon **Z1geoPZmorf**  Paamiut og Ivittuut

** Lexicon **Z1geo_nnguaqZmorf**  Quassunnguaq NY 20100410 (PL)

** Lexicon **Z1geo_nnguaqPZmorf**  Kangilinnguit NY 20100319 (PL)

** Lexicon **Z1geo+ssPZmorf**  Ilulissat

** Lexicon **Z1geo_oqsZmorf**  Finland

** Lexicon **Z1geo_oqsZmorf**  Finland

** Lexicon **Z1geo_oqs-nbestZmorf**  Særlig katalog til lande i bestemt form som Spanien

** Lexicon **Z1geo_oqs-tbestZmorf**  Særlig katalog til lande i bestemt form som Tyrkiet

** Lexicon **Z1geo_oqseZmorf**  Thule

** Lexicon **Z2-geoSZmorf**  Ikerasaarsuk; Korea% Kujalleq

** Lexicon **Z2+lgeoSZmorf**  Nanortalik

** Lexicon **Z2-geo_uukSZmorf**  un til Nuuk

** Lexicon **Z2-geo_specielSZmorf**  til geografiske steder med fleksion såsom Qinngorput – Qinngorpummi, Qinngorpormiu

** Lexicon **Z2geo_aqSZmorf**  Nuussuaq

** Lexicon **Z2-geoqPZmorf**  Saqqarliit:Saqqarleq

** Lexicon **Z2-geolikPZmorf**  Kapisillit:Kapisi

** Lexicon **Z1ateqpropVZmorf**  

** Lexicon **Z1instpropVZmorf**  

** Lexicon **Z1ateqpropCZmorf**  

** Lexicon **Z2-ateqZmorf**  

** Lexicon **Z2ateq_niqZmorf**  

** Lexicon **Z2ateq_neqZmorf**  

** Lexicon **Z2suaq_ateqZmorf**  

** Lexicon **Z1ateqZmorf_all**  

** Lexicon **Z1ateq_tptZmorf**  

** Lexicon **Z1ateq_atZmorf**  

** Lexicon **Z1ateq_taqZmorf**  

** Lexicon **Z1ateq_saqZmorf**  

** Lexicon **Z1ateq_seqZmorf**  

** Lexicon **Z1ateq_leqZmorf**  

** Lexicon **Z1ateq_gaqZmorf**  

** Lexicon **Z1ateq_ngaqZmorf**  

** Lexicon **Z1ateq_goqZmorf**  

** Lexicon **Z1ateq_qoqZmorf**  

** Lexicon **Z1ateq+qaZmorf**  

** Lexicon **Z1ateq+ĸaZmorf**  

** Lexicon **Zateq_tptZmorf**  

** Lexicon **Z1ateqPZmorf**  

** Lexicon **Z2-ateq_specielSZmorf**  

** Lexicon **Z1nnguaq_ateqZmorf**  

** Lexicon **Zateq_oqsZmorf**  

** Lexicon **Zateq_numCZmorf**   Ny 20191010 til proprier som DR1 og Peugeot 206. Sem/Hum fastholdt i første omgang, for DR og biler kan jo gøre noget aktivt???

** Lexicon **Zateq_numVZmorf**  Ny 20191010 til proprier som DR2 og Peugeot 208

** Lexicon **Z1ateq_iaqZmorf**  

** Lexicon **Z1ateq_iaĸZmorf**  

** Lexicon **Z1ateq_ioqZmorf**  

** Lexicon **Z1ateq_naqZmorf**  

** Lexicon **Z1ateq_noqZmorf**  

** Lexicon **Z1ateq_meqZmorf**  

** Lexicon **Z1geopropZ**  

** Lexicon **Z1geopropPZ**  

** Lexicon **Z1ateqpropZ**  

** Lexicon **Z1ateqpropPZ**  De Konservative

** Lexicon **Z1Fem_ateqZ**  Test af femininum tag med stamme på -e. Tidligere Z1ateqpropZ og Z1ateqZmorf

** Lexicon **Z1Mask_ateqZ**  

** Lexicon **Z1Mask_GrlateqZ**  

** Lexicon **Z1Fem_tptZ**  

** Lexicon **Z1Mask_tptZ**  

** Lexicon **Z1Mask_atZ**  

** Lexicon **Z1Mask_taqZ**  

** Lexicon **Z1Fem_taqZ**  

** Lexicon **Z1Mask_saqZ**  

** Lexicon **Z1Mask_seqZ**  

** Lexicon **Z1Mask_leqZ**  

** Lexicon **Z1Fem_leqZ**  

- Det følgende er et forsøg på et gennemgangsleksikon til fornavne af oqs-typen inkl. køn. Testord = Hans
- Det påregnes, at taggen Sem/Mask (og senere Sem/Fem) vil overflødiggøre Sem/FirstName (og egentlig også Sem/Hum)

** Lexicon **ZMask_oqsZ**  

** Lexicon **ZFem_oqsZ**  

** Lexicon **Z1Fem_nnguaqZ**  
Test afkønsopdelte fornavne på NNGUAQ. Tidligere Z1nnguaq_ateqZmorf

** Lexicon **Z1Mask_nnguaqZ**  

** Lexicon **Z1Mask_araqZ**  

** Lexicon **Z1Fem_araqZ**  

** Lexicon **Z1Fem_araĸZ**  

** Lexicon **Z1Mask_gaqZ**  

** Lexicon **Z1Fem_ngaqZ**  

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

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/propernouns.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/propernouns.lexc)</small>

---

# src-fst-morphology-affixes-symbols.lexc.md 



# Symbol affixes

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/affixes/symbols.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/affixes/symbols.lexc)</small>

---

# src-fst-morphology-root.lexc.md 

# Greenlandic morphological analyser

Fil for at generere de centrale morfologiske processer i vor grønlandske analysator

# Multicharacter symbols

* **AA+** = præfiks
* **TA+** = præfiks

## Tags for POS (primary tags)

### Main Word Classes

* **+encl** = clitic to separate clitics from suffixes with identical upper form in disambiguator.cg3 (TTAAQ)
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
* **+Sem/Hmyth** = Human Mythological
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

* **@U.prop.poss@** = Prop + possessor
* **@U.prop.norm@** = Prop + vanlig
* **@C.prop.norm@**

* **@U.acro.poss.epent.v@** = acro + possessor + epenthetic v
* **@U.acro.norm@** = acro + vanlig
* **@C.acro.norm@**

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
* **+KALAAR**
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
* **+NGIR** 
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
* **+RAJUK**
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
* **+RUR** 
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
* **+SIQ** 
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

### Grænsesymbol

## Symbols that need to be escaped on the lower side (towards twolc)
* »
* « ()

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

* **%ALTINF** Alternerende infinitiver ved rpoq
* **%CLIT**  Klitika
* **%CVqTRUNC** 
* **%EPENT** Epentetisk vokal mellem konsonant og clitis i fremmedord
* **%GEMEQ** gemineringskode til p-bøjede på seq og leq
* **%POSSESSORTRUNC** 
* **%PRONTRUNC** 
* **%PROP** Blokering mod vokalreglerne
* **%ProgI** Tilfoejet 20100117 for at haandtere progressiv i-assimilation ved ARAQ og UTIGE
* **%STRUNC**  trunkerer både vokal og konsonant
* **%TRUNC**  minus-suffikser, trunkerer
* **%VCTRUNC** 
* **%VTRUNC** 
* **%^GEM** 
* **%^GEMC** 
* **%^GEMS** 
* **%^Loan** 
* **%likTRUNC** 
* **%qaGEMIN** 
* **%qoGEMIN** 

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

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/root.lexc)</small>

---

# src-fst-morphology-stems-nouns.lexc.md 

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

De mest alminderlige nomenleksika:

- 10227 Z1Zmorf = Nomen, svag bøjning, går til derivationsleksika
- 2295 tptmorf = 
- 1675 Z2-Zmorf = Nomen, sterk bøjning som trunkerer, går til derivationsleksika
- 1446 Z2Zmorf = Nomen, svak bøjning, går til derivationsleksika
-  969 N_Loan
-  632 Z1VZmorf
-  429 Z1+kaZmorf
-  325 Krestr
-  301 Z2+lZmorf
-  247 Z1+ssZmorf
-  245 Z1+qaZmorf
-  240 N_Loan_GEM
-  237 SEQgemin
-  231 N_Loan_e
-  225 Z2aqZmorf
-  193 Z2-qZmorf
-  164 Z1eZmorf
-  133 Z1nnguaqZmorf

...

Leksikonet **Nomen** inneholder nomenstammerne.

xxx 20170522 til former, som ikke kan læses men som har brug for en analyse i cg'en. Pluralis og singularis-kataloger er ikke medtaget.

### Retningslinjer for låneord 

Grundformen af ordet er den samme som i lånsproget (uden i):
emblem N_Loan_GEM ; (og ikke emblemi)
Er der alternative ikke godkendte stavemåder i endelsen, tilføjes de i næste katalog (fx emblemmi)
Er der alternative ikke godkendte stavemåder andetsteds, tilføjes de med +OLang/xxx+Err/Sub
roman+OLang/DAN+Err/Sub:romaani Z1VZmorf ;
Er der en godkendt form af låneordet, er det også en grundform, og den får ikke +OLang/xxx:
```
septembari Z1VZmorf ;
septembari+Orth/Arch:sivtimpari Z1VZmorf ;
september N_Loan ;
enheder sendes til specielt unit-låneordskatalog

* aaffaffak Z2-Zmorf ;              
* aaffaffak+N+Abs+Sg:aaffaffaq Krestr ; 
* aaffaq Z2-qZmorf ;                 
* ...

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/nouns.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/stems/nouns.lexc)</small>

---

# src-fst-morphology-stems-propernouns.lexc.md 



xxx 20170522 til former, som ikke kan læses men som har brug for en analyse i cg'en..

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/propernouns.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/stems/propernouns.lexc)</small>

---

# src-fst-morphology-stems-verbs.lexc.md 



xxx 20170524 til verbalstammer, som ikke kan læses men som har brug for en analyse i cg'en. Pluralis tantum-kataloger er ikke medtaget. !er det nødvendigt også at medtage stammer fra derivationsleksika?

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/stems/verbs.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/stems/verbs.lexc)</small>

---

# src-fst-transcriptions-transcriptor-abbrevs2text.lexc.md 



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

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-abbrevs2text.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/transcriptions/transcriptor-abbrevs2text.lexc)</small>

---

# src-fst-transcriptions-transcriptor-numbers-digit2text.lexc.md 



% komma% :,      Root ;
% tjuohkkis% :%. Root ;
% kolon% :%:     Root ;
% sárggis% :%-   Root ; 
% násti% :%*     Root ; 

* * *

<small>This (part of) documentation was generated from [src/fst/transcriptions/transcriptor-numbers-digit2text.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/transcriptions/transcriptor-numbers-digit2text.lexc)</small>

---

# tools-grammarcheckers-grammarchecker.cg3.md 



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
We import tag declaration from `../../src/cg3/disambiguator.cg3`

## Rule section

### Speller suggestions rule
add &SUGGESTWF to any spelling suggestion
that we actually want to suggest to the user.
The simplest is to just add it to all spelled words:

@OUTSIDE RULES@

### Grammatical rules

#### Verb valency rules

@OUTSIDE RULES@

ADD:msyn-arg-ins-trm

ADD:msyn-arg-ins-trm

ADD:msyn-arg-abs-rel

ADD:msyn-arg-abs-rel

ADD:msyn-subj-rel-abs

ADD:msyn-subj-rel-abs

### Simple punctuation rules

Rules for quotation marks.

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-kal/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>

---

# tools-grammarcheckers-liststemplates.cg3.md 



## Grammarchecker tags
- LIST QMARK = QMARK ; 
- MAPPING-PREFIX = & ; 

- LIST &ellipsis = &ellipsis ; 
- LIST &guillemets = &guillemets ; 
- LIST &typo = &typo ; 

- LIST &msyn-arg-trm-ins = &msyn-arg-trm-ins ; 
- LIST &msyn-arg-ins-trm = &msyn-arg-ins-trm ; 
- LIST &msyn-arg-abs-rel = &msyn-arg-abs-rel ; 

- 	&apstr-hyph						
- 	&msyn-abs-rel					
- 	&msyn-abs-taama-case			
- 	&msyn-abs-trm-atatillugu	
- 	&msyn-abs-via					
- 	&msyn-con-rel					
- 	&msyn-excl-abl					
- 	&msyn-ins-abl					
- 	&msyn-obj-marking-abs-3PlO	
- 	&msyn-subj-marking-abs-HTR	
- 	&syn-abs-wordorder			
- 	&syn-TUQ-wordorder			
- 	&ADDED							
- 	&msyn-Opt-1Sg-2SgO			
- 	&msyn-personalname-Pl-Sg	
- 	co&msyn-personalname-Pl-Sg	
- 	<sem-personalname>			
- 	<heur-prop>						
- 	<heur-Abs-Sg>					

* * *

<small>This (part of) documentation was generated from [tools/grammarcheckers/liststemplates.cg3](https://github.com/giellalt/lang-kal/blob/main/tools/grammarcheckers/liststemplates.cg3)</small>

---

# tools-tokenisers-tokeniser-disamb-gt-desc.pmscript.md 

# Tokeniser for kal

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

# tools-tokenisers-tokeniser-gramcheck-gt-desc.pmscript.md 

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

# tools-tokenisers-tokeniser-tts-cggt-desc.pmscript.md 

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
