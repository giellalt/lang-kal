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
-  240 N_Loan_GE
-  237 SEQgemin
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
