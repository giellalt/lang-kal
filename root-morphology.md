# Greenlandic morphological analyser

Fil for at generere de centrale morfologiske processer i vor grønlandske analysator

# Multicharacter symbols


 * **v2** = Alternativt /v/ i låneord, der ikke skal slettes efter /u/
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


### Tags for Pronouns
 * **+Gram/Int** = Interrogative Pronoun
 * **+Gram/Pers** = Personal Pronoun
 * **+Gram/Coref** = Reflexive Pronoun
 * **+Gram/Indef** = Indefinitive Pronoun

### Tags for Other Word Classes
 ***+Gram/Dem** = Demonstative pronoun, demonstrative adverb or demonstrative interjection
 * **+Gram/Cong** = Various Pronoun, eg. tamaq, kisi (personkongruensdeklination)
 * **+Gram/Abbr** = Abbreviation
 * **+Gram/ACR** = Acronyms
 * **+Gram/Adj** = Adjektiver optaget direkte inkl. ubøjet anvendelse før kerne

### Semantics
 ***+Sem/Be**  <fn:Be> !#náipoĸ
 ***+Sem/event** fx Avannaata Qimussersua
 ***+Sem/Fem** Forsøg med femininum sml. Sem/Mask
 * **+Sem/FirstName** = Attributive
 * **+Sem/Geo** = Geographical Propernoun
 * **+Sem/Hum** = Non-geographical Propernoun
 ***+Sem/LastName**  Efternavne
 ***+Sem/Mailadresse** tag til adresser af typen cccc@cccc.cc
 ***+Sem/Mask** Forsøg med en ny tag til fornavne af maskulinum
 ***+Sem/ModeOfMovement** <fn:ModeOfmovement> !#nâgpoĸ
 * **+Sem/Time** = Temporal particle !The random adverbial 'phrases' like -riutaa -isaa etc.
 ***+Sem/Unit** = Unit !Til besværlige låneord som 'time' etc., der optræder absolut
 ***+Sem/Url** tag til adresser af typen www.ccc.cc

### Grammar
 ***+Gram/Comp** = Composita !Særlig tag til NIQ ajor/saper/artor/nalu- konstruktioner ved transitive verber
 ***+Gram/TUT_IP** = Composita !tag til at slette overtallige ip hvis der ikke står tut ved siden af
 ***+Gram/Refl** = Reflexive, reciprocal or passive !asavoq
 ***+Gram/Reci** = Reciprocal !naapipput
 ***+Gram/Pass** = Passive !used when a derivational morpheme not explicitely denotes a passivisation, or when intransitive flexion changes an active verb into a passive
 ***+Gram/PlurTant** = plurale tantum noun: ilaqutariit
 ***+Gram/SingTant** = singulare tantum noun: sila
 * **+Gram/Ord** = Ordinal number !pingajuat
 ***+Gram/Hyb** = Følger hybriderne for at bestemme stederne hvor strengene kan klippes i to ord ved hybriderne
 *__ +Gram/TransverbNIQ __ = NIQ-former med transitivt verbale egenskaber. PL20210417

### Derivation
 * **+Der/Vok** = Vocative
 ***+Der/Guess** = Guessed lemma and inflection which are not listed in the FST
 ***+Der/Loan** = Guessed stems which are not listed in the FST and contain non-Greenlandic characters or non-Greenlandic final character
 ***+Der/Unk** = Ukendt morfem !Ukendte morfemer i ellers analyserede stammer for at få rigtig lemmaanalyse, som orsoq+NNAP+nv+UNK+vn:orsunnattaaq
 ***+Der/vv** = verb to verb
 ***+Der/nn** = noun to noun
 ***+Der/nv** = noun to verb
 ***+Der/vn** = verb to noun
 ***+Der/xx** = Follows the enclitic suffix TUQ to be able to distinguish TUQ+xx from the derivational morpheme TUQ+vn in CG: qanortoq
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
 ***+1SgPoss** = Possessor 1.person singular
 ***+2SgPoss** = Possessor 2.person singular
 ***+3SgPoss** = Possessor 3.person singular
 ***+4SgPoss** = Possessor 4.person singular
 ***+1PlPoss** = Possessor 1.person plural
 ***+2PlPoss** = Possessor 2.person plural
 ***+3PlPoss** = Possessor 3.person plural
 ***+4PlPoss** = Possessor 4.person plural

Flag diacritics til pluralis tantum subjekter

Flag diacritics til verber med kun pluralis i objekterne

Test af boolsk variabel til ad hoc blokeringer

Off-flag sættes i verbs på transitive verber med usandsynlig Refl. On-flag på taggen Gram/Refl i gennemgangslexica


Off-flag på verber som akuaa, der ikke må lave metatese på NIQ

Off-flag på nominer, der SKAL opføre sig replacive som pilersaarusiorpoq og aqqusinniorpoq

Off-flag i nouns og Off-flag i der-inf  når TUR og TUGAQ ikke må assibileres og On-flag, når de skal assibileres. Også for at forebygge assibilering efter HTR på nnip

Ad hoc til test af alternativ flag diacritics ved præfikser. Husk også den udkommenterede linie 'Kingumoorutit ;' i LEXICON Root



Test af P- og D-flag til forebyggelse af rekusivitet ved TIP
og blokeres af 

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
 |  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
 |  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised
For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.
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
 |  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
 |  @U.Cap.Opt@ | Allowing downcasing of derived names: København > københavner.

