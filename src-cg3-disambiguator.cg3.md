

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
* 	Heur/Prop 
* 	Heur/Quote 
* 	Sem/CognitiveMaking  = qinersivoq i modsætning til qinerlerpoq
* 	Sem/Concessive  = koncessive sætninger
* 	Sem/event 
* 	Sem/Fem  = Introduceret som test 20180613. Skal måske ud igen
* 	Sem/FirstName 
* 	Sem/Geo iSem/Geo 
* 	Sem/Hunt  = qinerlerpoq i modsætning til qinersivoq
* 	Orth/Alt 
* 	Orth/Arch 
* 	Orth/Copy  = Alternative append rules
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

### Semantic tags
Gram/... and different specifications

* LIST Sem/Hum = Sem/Hum <hum> ; 

### Orthographic error tags
* LIST Orth/Append = Orth/Append <append> ;  = readings added by CG (APPEND)
* LIST SUB = Orth/Arch Orth/Alt Orth/Youth ;  common tag for all

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

* LIST NUMERAL = "ataaseq" "marluk" "pingasut" "sisamat" "tallimat" "arfineq" "arfineq marluk" "arfineq pingasut" "qulingiluat" "qulaaluat" "qulit" "aqqaneq"; 

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
- **LIST PASSIV = (GE SIMA) NIQAR (/Gram/TV TAQ Der/vn U/l) (/TIP Der/vv Gram/TV TAQ Der/vn N/l) (/Gram/Db TAQ Der/vn U/l);** =
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
- **SET IV_SUBJ@CODE@ = IV1Sg OR IV2Sg OR IV3Sg OR IV4Sg OR IV1Pl OR IV2Pl OR IV3Pl OR IV4Pl;** =

- **SET IV_SG_SUBJ@CODE@ = IV1Sg OR IV2Sg OR IV3Sg OR IV4Sg ;**
- **SET IV_PL_SUBJ@CODE@ = IV1Pl OR IV2Pl OR IV3Pl OR IV4Pl;**

- **LIST POSS34Sg_POSSSg = (Rel Sg) (3SgPoss Sg) ;**
- **LIST POSS34Sg_POSSPl = (Rel Sg) (3SgPoss Pl) ;**
- **LIST POSS34Pl_POSSSg = (Rel Pl) (3PlPoss Sg) ;**
- **LIST POSS34Pl_POSSPl = (Rel Pl) (3PlPoss Pl) ;**
- **LIST NUM34POSSSg = (Rel Num) (3SgPoss) ;**
- **LIST NUM34POSSPl = (Rel Num) (3PlPoss) ;**

- **SET POSS34_POSS@CODE@ = POSS34Sg_POSSSg OR POSS34Sg_POSSPl OR POSS34Pl_POSSSg OR POSS34Pl_POSSPl OR NUM34POSSSg OR NUM34POSSPl;**

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

- **SET IVTVSUBJ@CODE@ = IV_SUBJ@CODE@ | SUBJTRANSVERB@CODE@ ;**

Unification set til CONT og subjekter, kun for intransitive CONT.
- **LIST ContSg = (Sg Abs) 4Sg ;**
- **LIST ContPl = (Pl Abs) 4Pl ;**
- **SET Cont@CODE@ = ContSg OR ContPl ;**

Unification set til CONT og kongruente V ved intransitive V

!!! Partikler

### Lexical sets

- **LIST TASSA = "tassa" ("tass" Gram/Dem Interj);**

#### Verbernes leksikalske klasser

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