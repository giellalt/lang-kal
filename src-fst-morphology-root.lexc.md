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

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/morphology/root.lexc)</small>