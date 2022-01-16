# Greenlandic morphological analyser

Fil for at generere de centrale morfologiske processer i vor grønlandske analysator

# Multicharacter symbols


* **v2/u/** = Alternativt /v/ i låneord, der ikke skal slettes efter /u/
* **AA+præfiks** = præfiks
* **TA+præfiks** = præfiks

## Tags for POS (primary tags)

### Main Word Classes
* **+NNoun** = Noun
* **+VVerb** = Verb
* **+Palipartikellignende** = Particle-like - partikellignende
* **+ConjConjunction** = Conjunction
* **+AdvAdverb** = Adverb
* **+InterjInterjection** = Interjection
* **+PronPronoun** = Pronoun
* **+PropPropernoun** = Propernoun
* **+NumNumeral** = Numeral
* **+Symbol©** = independent symbols in the text stream, like £, €, ©



## Secondary tags

### Tags for Verbs
* **+Gram/IV20180324** = Intransitive Verb !PL 20180319 ny formalisme gennemført livm 20180324
* **+Gram/TV20180324** = Transitive Verb !PL 20180319 ny formalisme gennemført livm 20180324
* **+Gram/HVHalf-transitive)** = Non-marked agentive Verb (used as Half-transitive)
* **+Gram/Db20180319** = Double-transitive Verb. PL tilføjet 20180319
* **+Gram/ExclmPL** = Exclamation !Flyttet fra primære tags 20180420 PL


### Tags for Pronouns
* **+Gram/IntPronoun** = Interrogative Pronoun
* **+Gram/PersPronoun** = Personal Pronoun
* **+Gram/CorefPronoun** = Reflexive Pronoun
* **+Gram/IndefPronoun** = Indefinitive Pronoun

### Tags for Other Word Classes
***+Gram/Deminterjection** = Demonstative pronoun, demonstrative adverb or demonstrative interjection
* **+Gram/Cong(personkongruensdeklination)** = Various Pronoun, eg. tamaq, kisi (personkongruensdeklination)
* **+Gram/AbbrAbbreviation** = Abbreviation
* **+Gram/ACRAcronyms** = Acronyms
* **+Gram/Adjkerne** = Adjektiver optaget direkte inkl. ubøjet anvendelse før kerne

### Semantics
***+Sem/Be!#náipoĸ**  <fn:Be> !#náipoĸ
***+Sem/eventQimussersua** fx Avannaata Qimussersua
***+Sem/FemSem/Mask** Forsøg med femininum sml. Sem/Mask
* **+Sem/FirstNameAttributive** = Attributive
* **+Sem/GeoPropernoun** = Geographical Propernoun
 *** +Sem/H        ** = Menneske
 * ** +Sem/HH     ** = Organisationer
 *** +Sem/Hprof ** = Menneske erhverv
* **+Sem/HumPropernoun** = Non-geographical Propernoun
***+Sem/LastNameEfternavne**  Efternavne
***+Sem/Mailadressecccc@cccc.cc** tag til adresser af typen cccc@cccc.cc
***+Sem/Maskmaskulinum** Forsøg med en ny tag til fornavne af maskulinum
***+Sem/ModeOfMovement!#nâgpoĸ** <fn:ModeOfmovement> !#nâgpoĸ
 *** +Sem/Remove	** = atserivoq mods. atsiivoq
***+Sem/Timeetc.** = Temporal particle !The random adverbial 'phrases' like -riutaa -isaa etc.
***+Sem/Unitabsolut** = Unit !Til besværlige låneord som 'time' etc., der optræder absolut
***+Sem/Urlwww.ccc.cc** tag til adresser af typen www.ccc.cc
 *** +Sem/misse ** tag til at markere usikker possessor for misse


### Grammar
***+Gram/Compverber** = Composita !Særlig tag til NIQ ajor/saper/artor/nalu- konstruktioner ved transitive verber
***+Gram/TUT_IPaf** = Composita !tag til at slette overtallige ip hvis der ikke står tut ved siden af
***+Gram/Refl!asavoq** = Reflexive, reciprocal or passive !asavoq
***+Gram/Reci!naapipput** = Reciprocal !naapipput
***+Gram/Passpassive** = Passive !used when a derivational morpheme not explicitely denotes a passivisation, or when intransitive flexion changes an active verb into a passive
***+Gram/PlurTantilaqutariit** = plurale tantum noun: ilaqutariit
***+Gram/SingTantsila** = singulare tantum noun: sila
* **+Gram/Ord!pingajuat** = Ordinal number !pingajuat
***+Gram/Hybhybriderne** = Følger hybriderne for at bestemme stederne hvor strengene kan klippes i to ord ved hybriderne
 *__ +Gram/TransverbNIQ __ = NIQ-former med transitivt verbale egenskaber. PL20210417

### Derivation
* **+Der/VokVocative** = Vocative
***+Der/GuessFST** = Guessed lemma and inflection which are not listed in the FST
***+Der/Loancharacter** = Guessed stems which are not listed in the FST and contain non-Greenlandic characters or non-Greenlandic final character
***+Der/Unkorsoq+NNAP+nv+UNK+vn:orsunnattaaq** = Ukendt morfem !Ukendte morfemer i ellers analyserede stammer for at få rigtig lemmaanalyse, som orsoq+NNAP+nv+UNK+vn:orsunnattaaq
***+Der/vvverb** = verb to verb
***+Der/nnnoun** = noun to noun
***+Der/nvverb** = noun to verb
***+Der/vnnoun** = verb to noun
***+Der/xxqanortoq** = Follows the enclitic suffix TUQ to be able to distinguish TUQ+xx from the derivational morpheme TUQ+vn in CG: qanortoq
Citerede ordformer  jf. Kleinschmidt ^rpoĸ

### Dialect
* **+Dial/Ngrstead)** = Northern dialect (such as ng for g; predictable dialectal changes might be dealt with in the postprosessor in stead)
* **+Dial/Sgraneeqqavoq)** = Southern dialect (such as VVC for VVCC), aneeqavoq (and not aneeqqavoq)
* **+Dial/Egrdialect** = Eastern dialect
* **+Dial/Vgrrn)** = Western dialect (such as rng for rn)

### Tags to mark loan word entries with a diverting orthography
That is, they need special treatment in e.g. speech syntesis.
* **+OLang/DANprofet** = Danish stem: profet
* **+OLang/ENGgame** = English stem: game
* **+OLang/DEUbier** = German stem: bier

### Orthograhy
* **+Orth/Archanípâ)** = Archaic language, (stem, morpheme, flexion, or sandhi): tikisimavoq, asallutigik, agpâ (for anípâ)
* **+Orth/Youthasallutigu** = Youth language: asallutigu
* **+Orth/Altpoor’lu** = Substandard language (hyphens among other things…): isissavoq, Qaanaaq-mut, fabrikki, poor’lu

### Usage/error
* **+Use/-Spellspeller** = Do not include in speller
* **+Use/Hybridnorm-generator** = For generating split hybrids. Should not be included in speller, analyser, or norm-generator
* **+Err/Sub2-imik** = Not authorized spelling: 2-imik


## Tags for Inflection

### Numerus
* **+SgSingularis** = Singularis
* **+DuDualis** = Dualis
* **+PlPluralis** = Pluralis

### Kasus
* **+AbsAbsolutive** = Absolutive
* **+RelRelative** = Relative
* **+TrmTerminalis** = Terminalis
* **+AblAblative** = Ablative
* **+LokLocative** = Locative
* **+AeqAequalis** = Aequalis
* **+InsInstrumentalis** = Instrumentalis
* **+ViaVialis** = Vialis

### Særlige 3./4. persons kasus med DivPron (Gram/Cong)
* **+NomNominative** = Nominative
* **+AkkAccusative** = Accusative

### Modus
* **+IndIndicative** = Indicative
* **+IntInterrogative** = Interrogative
* **+ImpImperative** = Imperative
* **+OptOptative** = Optative
* **+CauCausative** = Causative
* **+ConConditional** = Conditional
* **+ParParticipium** = Participium
* **+ContInfinitive** = Infinitive
* **+ContNegInfinitive** = Negated Infinitive
* **+IteCauCausative)** = Iterative (morphologically: Causative)

### Verb person-numerus
* **+1Sgsingular** = Subject 1.person singular
* **+2Sgsingular** = Subject 2.person singular
* **+3Sgsingular** = Subject 3.person singular
* **+4Sgsingular** = Subject 4.person singular
* **+1Plplural** = Subject 1.person plural
* **+2Plplural** = Subject 2.person plural
* **+3Plplural** = Subject 3.person plural
* **+4Plplural** = Subject 4.person plural
* **+1Dudual** = Subject 1.person dual
* **+2Dudual** = Subject 2.person dual
* **+3Dudual** = Subject 3.person dual
* **+4Dudual** = Subject 4.person dual

* **+1SgOsingular** = Object 1.person singular
* **+2SgOsingular** = Object 2.person singular
* **+3SgOsingular** = Object 3.person singular
* **+4SgOsingular** = Object 4.person singular
* **+1PlOplural** = Object 1.person plural
* **+2PlOplural** = Object 2.person plural
* **+3PlOplural** = Object 3.person plural
* **+4PlOplural** = Object 4.person plural
* **+1DuOdual** = Object 1.person dual
* **+2DuOdual** = Object 2.person dual
* **+3DuOdual** = Object 3.person dual
* **+4DuOdual** = Object 4.person dual

### Possesive tags - Possessormarkering i possessum
***+1SgPosssingular** = Possessor 1.person singular
***+2SgPosssingular** = Possessor 2.person singular
***+3SgPosssingular** = Possessor 3.person singular
***+4SgPosssingular** = Possessor 4.person singular
***+1PlPossplural** = Possessor 1.person plural
***+2PlPossplural** = Possessor 2.person plural
***+3PlPossplural** = Possessor 3.person plural
***+4PlPossplural** = Possessor 4.person plural

Flag diacritics til pluralis tantum subjekter

Flag diacritics til verber med kun pluralis i objekterne

Test af boolsk variabel til ad hoc blokeringer

Test af boolsk variabel til ad hoc blokering af Gram/Exclm. stems sættes Off og derivation On

Off-flag sættes i verbs på transitive verber med usandsynlig Refl. On-flag på taggen Gram/Refl i gennemgangslexica


Off-flag på verber som akuaa, der ikke må lave metatese på NIQ

Nyt flag 20211214 for at forebygge *taakkuunngitsoq og *taannaanngitsut


Off-flag på nominer, der SKAL opføre sig replacive som pilersaarusiorpoq og aqqusinniorpoq

Off-flag i nouns og Off-flag i der-inf  når TUR og TUGAQ ikke må assibileres og On-flag, når de skal assibileres. Også for at forebygge assibilering efter HTR på nnip

Ad hoc til test af alternativ flag diacritics ved præfikser. Husk også den udkommenterede linie 'Kingumoorutit ;' i LEXICON Root



Test af P- og D-flag til forebyggelse af rekusivitet ved TIP
og blokeres af 

Test 20210504 af P- og R-flag for at generere både takornariat og takornarissat+Err/Sub

Flags for loan words, which must not go to N+Abs+Sg without derivation.




## Symbols that need to be escaped on the lower side (towards twolc)
* »
* « ()
* > (written with square brackets as stem, to avoid collision with the morpheme boundary marker)
* < (written with square brackets as stem, to avoid collision with the morpheme boundary marker)





## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:
|  @P.NeedNoun.ON@nominalised | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@nominalised | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@nominalised | (Dis)allow compounds with verbs unless nominalised
For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
|  @P.CmpFrst.FALSE@first | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ENDLEX | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@compounds | Block these words from making further compounds
|  @D.CmpLast.TRUE@R | Block such words from entering R
|  @D.CmpNone.TRUE@compounding | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@compounding | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@R | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@root. | Disallow words coming directly from root.
Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.
|  @U.Cap.Obl@deatnulasj. | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@københavner. | Allowing downcasing of derived names: København > københavner.

* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-kal/blob/main/../src/fst/root.lexc)</small>