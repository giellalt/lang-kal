

W E S T   G R E E N L A N D I C   D I S A M B I G U A T O R   #
================================================================ #

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
		- SELECT og REMOVE verber (11639 - 20210512)
		- SELECT and REMOVE participles (11779) (26062022)
		- SELECT og REMOVE nominer (11669 - 20210512)
- One-cohort disambiguation - cycle 0
- Local disambiguation - cycles 1
- Global disambiguation - cycles 2
- Syntactic disambiguation
	-Disambiguering af enkeltord (linie 13670)
	-Semantisk disambiguering - Nyt afsnit 20220610 (linie 16460)

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

* LIST Gram/2sml = Gram/2sml ;  = ?
* LIST Gram/ImpPos = Gram/ImpPos ;  = eksperimentell
* LIST Gram/Int = Gram/Int ;  = i brug?
* LIST Gram/Indef = Gram/Indef ;  = i brug?
* LIST DivPron = Gram/Cong DivPron ;  = ?
* LIST Gram/Cong = Gram/Cong ;  =
* LIST Gram/Hyb = Gram/Hyb ;  = hybridverbum, resultat av Der/nv efter substantivflektion (men er Aeq Sg syntaktisk relevant?, tt)
* LIST Gram/Pers = Gram/Pers ; 
* LIST Gram/PersQAR = Gram/PersQAR ;   #Tag til QAR i paratakse med personligt V
* LIST Gram/Coref = Gram/Coref ; 
* LIST Gram/Dem = Gram/Dem ; 
* LIST Gram/TransverbNIQ = Gram/TransverbNIQ ;   #PL20210417 kun til NIQ, der kan tage direkte objekt
* LIST Gram/ContSubjekt = Gram/ContSubjekt ;   #"dansk" subjekt tilføjet med ADDCOHORT
* LIST Gram/Upersonlig = Gram/Upersonlig ;   #Tag indsat i dep til konstruktioner, der oversættes med "man"
* LIST Gram/Abbr = Gram/Abbr ; 
* LIST Gram/ACR = Gram/ACR ; 
* LIST Gram/Ord = Gram/Ord Der/Ord ;   # Ordinaltal #Hedder Der/Ord i den videre kæde.
* LIST Gram/Adj = Gram/Adj ;  # Adjektiver optaget ubøjet og undertiden anvendt med dansk syntaks
* LIST Gram/Adv-encl = Gram/Adv-encl ; 
* LIST Gram/Comp = Gram/Comp ;   #20100228 Ny tag udelukkende til neq ajor/saper/artor/nalu (PL)
* LIST Gram/Conj-encl = Gram/Conj-encl ;   #sideordnende enklitiske konjunktioner
* LIST Gram/Db = Gram/Db ;  
* LIST Gram/Exclm = Gram/Exclm ; 
* LIST Gram/Gaanni = Gram/Gaanni ; 
* LIST Gram/HV = Gram/HV ; 
* LIST Gram/IV = Gram/IV ; 
* LIST Gram/TV = Gram/TV ; 

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
<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-kal/blob/main/src/cg3/disambiguator.cg3)</small>