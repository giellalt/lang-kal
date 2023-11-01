

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