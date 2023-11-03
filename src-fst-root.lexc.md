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

# List of the so-called Greenlandic *tilhæng*, i.e., derivational affixes

* **+A** = Tilhæng
* **+AA** = Tilhæng
* **+AR** = Tilhæng
* **+AASIILLU** = Tilhæng
* **+AASIINNGUUQ** = Tilhæng
* **+AASIIT** = Tilhæng
* **+AASIT** = Tilhæng
* **+AAT** = Tilhæng
* **+ALAAQ** = Tilhæng
* **+ALAAR** = Tilhæng
* **+ALLAK** = Tilhæng
* **+ALLAP** = Tilhæng
* **+ALUK** = Tilhæng
* **+ALUP** = Tilhæng
* **+ARAQ** = Tilhæng
* **+ARSUK** = Tilhæng
* **+ARSUP** = Tilhæng
* **+ATAAR** = Tilhæng
* **+ATSIAQ** = Tilhæng
* **+GAJUK** = Tilhæng
* **+GAJUP** = Tilhæng
* **+GAJUUQ** = Tilhæng
* **+GALLAR** = Tilhæng
* **+GALUAQ** = Tilhæng
* **+GALUAR** = Tilhæng
* **+GALUP** = Tilhæng
* **+GALUTTUAQ** = Tilhæng
* **+GALUTTUAR** = Tilhæng
* **+GASAAQ** = Tilhæng
* **+GASAAR** = Tilhæng
* **+GASAP** = Tilhæng
* **+GASUAR** = Tilhæng
* **+GASUGE** = Tilhæng
* **+GASURE** = Tilhæng
* **+GE** = Tilhæng
* **+GI** = Tilhæng
* **+GIAQAR** = Tilhæng
* **+GIAR** = Tilhæng
* **+GIARTUAAR** = Tilhæng
* **+GIARTUR** = Tilhæng
* **+GIIAAQ** = Tilhæng
* **+GIIAAR** = Tilhæng
* **+GIIAAT** = Tilhæng
* **+GIILIP** = Tilhæng
* **+GIIP** = Tilhæng
* **+GIIT** = Tilhæng
* **+GIP** = Tilhæng
* **+GISSAAR** = Tilhæng
* **+GUMA** = Tilhæng
* **+GUMAAR** = Tilhæng
* **+GUMALLIR** = Tilhæng
* **+GUMINAALLI** = Tilhæng
* **+GUMINAR** = Tilhæng
* **+GUNAR** = Tilhæng
* **+GUNNAAR** = Tilhæng
* **+GUNNAIR** = Tilhæng
* **+GUNNAR** = Tilhæng
* **+GUNNARSI** = Tilhæng
* **+GUP** = Tilhæng
* **+GUSUP** = Tilhæng
* **+GUUQ** = Tilhæng
* **+GUURUNA** = Tilhæng
* **+HTR** = Tilhæng
* **+IAR** = Tilhæng
* **+ILATSI** = Tilhæng
* **+ILIQI** = Tilhæng
* **+INNANNGUAQ** = Tilhæng
* **+INNAQ** = Tilhæng
* **+INNAR** = Tilhæng
* **+INNARIAA** = Tilhæng
* **+IP** = Tilhæng
* **+IR** = Tilhæng
* **+IRNIAQ** = Tilhæng
* **+IRNIAR** = Tilhæng
* **+IRSIR** = Tilhæng
* **+IRUSSI** = Tilhæng
* **+IRUTE** = Tilhæng
* **+IRVIK** = Tilhæng
* **+ISAP** = Tilhæng
* **+ISUA** = Tilhæng
* **+IT** = Tilhæng
* **+JA** = Tilhæng
* **+JAALLU** = Tilhæng
* **+JAAR** = Tilhæng
* **+JURAR** = Tilhæng
* **+JURTUR** = Tilhæng
* **+KAA** = Tilhæng
* **+KAJAAQ** = Tilhæng
* **+KANNIQ** = Tilhæng
* **+KANNIR** = Tilhæng
* **+KAR** = Tilhæng
* **+KASIK** = Tilhæng
* **+KASIP** = Tilhæng
* **+KASSAK** = Tilhæng
* **+KASSAP** = Tilhæng
* **+KATAAR** = Tilhæng
* **+KATAP** = Tilhæng
* **+KILLI** = Tilhæng
* **+KIP** = Tilhæng
* **+KKAAQ** = Tilhæng
* **+KKAAR** = Tilhæng
* **+KKULUK** = Tilhæng
* **+KKULUP** = Tilhæng
* **+KKUMINAR** = Tilhæng
* **+KKUT** = Tilhæng
* **+KKUUTAAQ** = Tilhæng
* **+KKUUTAAR** = Tilhæng
* **+KUJUK** = Tilhæng
* **+KUJUP** = Tilhæng
* **+KUJUUQ** = Tilhæng
* **+KUJUUR** = Tilhæng
* **+KULA** = Tilhæng
* **+KULAAR** = Tilhæng
* **+KULLAK** = Tilhæng
* **+KULUK** = Tilhæng
* **+KULUP** = Tilhæng
* **+KULUUQ** = Tilhæng
* **+KUQ** = Tilhæng
* **+KUSUUR** = Tilhæng
* **+KUTSUUR** = Tilhæng
* **+LA** = Tilhæng
* **+LAAQ** = Tilhæng
* **+LAAR** = Tilhæng
* **+LI** = Tilhæng
* **+LIAA** = Tilhæng
* **+LIAASIIT** = Tilhæng
* **+LIAQ** = Tilhæng
* **+LIAR** = Tilhæng
* **+LIGUUQ** = Tilhæng
* **+LIK** = Tilhæng
* **+LIKKAAQ** = Tilhæng
* **+LIKKIRSAAR** = Tilhæng
* **+LIMI** = Tilhæng
* **+LIP** = Tilhæng
* **+LIR** = Tilhæng
* **+LIRI** = Tilhæng
* **+LIRNGUSAATE** = Tilhæng
* **+LIRSAAR** = Tilhæng
* **+LIRSUR** = Tilhæng
* **+LIRTUR** = Tilhæng
* **+LISAAR** = Tilhæng
* **+LISAR** = Tilhæng
* **+LISSAAQ** = Tilhæng
* **+LIUKU** = Tilhæng
* **+LIUKUA** = Tilhæng
* **+LIUNA** = Tilhæng
* **+LIUR** = Tilhæng
* **+LIUTE** = Tilhæng
* **+LIVIK** = Tilhæng
* **+LLAARE** = Tilhæng
* **+LLAATAA** = Tilhæng
* **+LLAMMAK** = Tilhæng
* **+LLAP** = Tilhæng
* **+LLAQQIP** = Tilhæng
* **+LLAR** = Tilhæng
* **+LLARIP** = Tilhæng
* **+LLATSIAR** = Tilhæng
* **+LLATTAA** = Tilhæng
* **+LLATTAAR** = Tilhæng
* **+LLATUAR** = Tilhæng
* **+LLI** = Tilhæng
* **+LLIQ** = Tilhæng
* **+LLIR** = Tilhæng
* **+LLIRPAAQ** = Tilhæng
* **+LLIUR** = Tilhæng
* **+LLUAR** = Tilhæng
* **+LLUINNAQ** = Tilhæng
* **+LLUINNAQQISSAAQ** = Tilhæng
* **+LLUINNAR** = Tilhæng
* **+LU** = Tilhæng
* **+LUGUUQ** = Tilhæng
* **+LUINNAR** = Tilhæng
* **+LUMI** = Tilhæng
* **+LUMIAASIIT** = Tilhæng
* **+LUP** = Tilhæng
* **+LUQA** = Tilhæng
* **+LUSUUQ** = Tilhæng
* **+LUUNNIILLI** = Tilhæng
* **+LUUNNIILLU** = Tilhæng
* **+LUUNNIIMMI** = Tilhæng
* **+LUUNNIIT** = Tilhæng
* **+LUUR** = Tilhæng
* **+MAA** = Tilhæng
* **+MAANNA** = Tilhæng
* **+MAANNAA** = Tilhæng
* **+MAANNAAJUNA** = Tilhæng
* **+MAAR** = Tilhæng
* **+MI** = Tilhæng
* **+MIAA** = Tilhæng
* **+MIAASIINNGUUQ** = Tilhæng
* **+MIAASIIT** = Tilhæng
* **+MINIQ** = Tilhæng
* **+MISAAR** = Tilhæng
* **+MITA** = Tilhæng
* **+MITAAVA** = Tilhæng
* **+MITAAVAAKU** = Tilhæng
* **+MITAAVAANA** = Tilhæng
* **+MITAAVAMI** = Tilhæng
* **+MIU** = Tilhæng
* **+MIUQ** = Tilhæng
* **+MMIRSUR** = Tilhæng
* **+NAAR** = Tilhæng
* **+NAQ** = Tilhæng
* **+NAR** = Tilhæng
* **+NASUGE** = Tilhæng
* **+NASURE** = Tilhæng
* **+NAVIAR** = Tilhæng
* **+NAVIIR** = Tilhæng
* **+NAVIIRSAAR** = Tilhæng
* **+NGA** = Tilhæng
* **+NGAAQ** = Tilhæng
* **+NGAAR** = Tilhæng
* **+NGAATSIAQ** = Tilhæng
* **+NGAJAK** = Tilhæng
* **+NGAJAP** = Tilhæng
* **+NIAA** = Tilhæng
* **+NIAALUP** = Tilhæng
* **+NIAQ** = Tilhæng
* **+NIAR** = Tilhæng
* **+NIARIUTAA** = Tilhæng
* **+NIARSARE** = Tilhæng
* **+NIINNAR** = Tilhæng
* **+NIKUQ** = Tilhæng
* **+NIKUU** = Tilhæng
* **+NIP** = Tilhæng
* **+NIQ** = Tilhæng
* **+NIQAR** = Tilhæng
* **+NIQ_AJUR** = Tilhæng
* **+NIR** = Tilhæng
* **+NIRAR** = Tilhæng
* **+NIRLIUR** = Tilhæng
* **+NIRLUP** = Tilhæng
* **+NIRPAA** = Tilhæng
* **+NIRPAAQ** = Tilhæng
* **+NIRPAARPAA** = Tilhæng
* **+NIRPAARPAAJU** = Tilhæng
* **+NIRSAQ** = Tilhæng
* **+NIRU** = Tilhæng
* **+NIRUJUSSUU** = Tilhæng
* **+NIRUMAAQ** = Tilhæng
* **+NIRUMAAR** = Tilhæng
* **+NISAQ** = Tilhæng
* **+NISSAQ** = Tilhæng
* **+NIUP** = Tilhæng
* **+NIUTAA** = Tilhæng
* **+NIUTE** = Tilhæng
* **+NNAAQ** = Tilhæng
* **+NNAP** = Tilhæng
* **+NNAR** = Tilhæng
* **+NNGAANNIIR** = Tilhæng
* **+NNGAR** = Tilhæng
* **+NNGIR** = Tilhæng
* **+NNGIRSAAR** = Tilhæng
* **+NNGISAANNAR** = Tilhæng
* **+NNGIT** = Tilhæng
* **+NNGUALLAARE** = Tilhæng
* **+NNGUAQ** = Tilhæng
* **+NNGUAR** = Tilhæng
* **+NNGUARSI** = Tilhæng
* **+NNGUASIK** = Tilhæng
* **+NNGUATSIAR** = Tilhæng
* **+NNGUJUUR** = Tilhæng
* **+NNGUR** = Tilhæng
* **+NNGUUJUIT** = Tilhæng
* **+PAAQ** = Tilhæng
* **+PAJAAQ** = Tilhæng
* **+PAJAAR** = Tilhæng
* **+PAJUK** = Tilhæng
* **+PAJUP** = Tilhæng
* **+PAK** = Tilhæng
* **+PALAAQ** = Tilhæng
* **+PALAAR** = Tilhæng
* **+PALLAK** = Tilhæng
* **+PALLAP** = Tilhæng
* **+PALUK** = Tilhæng
* **+PALUP** = Tilhæng
* **+PASIP** = Tilhæng
* **+PIAQ** = Tilhæng
* **+PIAR** = Tilhæng
* **+PILUK** = Tilhæng
* **+PILUP** = Tilhæng
* **+PILUUR** = Tilhæng
* **+QANNGIT** = Tilhæng
* **+QAR** = Tilhæng
* **+QATE** = Tilhæng
* **+QATIGIIP** = Tilhæng
* **+QATIGIIT** = Tilhæng
* **+QATTAAR** = Tilhæng
* **+QE** = Tilhæng
* **+QENA** = Tilhæng
* **+QINA** = Tilhæng
* **+QISSAAR** = Tilhæng
* **+QQA** = Tilhæng
* **+QQAAQ** = Tilhæng
* **+QQAAR** = Tilhæng
* **+QQAJAA** = Tilhæng
* **+QQAJAR** = Tilhæng
* **+QQAMMI** = Tilhæng
* **+QQAMMIQ** = Tilhæng
* **+QQAMMIR** = Tilhæng
* **+QQAR** = Tilhæng
* **+QQARTUR** = Tilhæng
* **+QQATAR** = Tilhæng
* **+QQATUR** = Tilhæng
* **+QQINNAAQ** = Tilhæng
* **+QQINNAAR** = Tilhæng
* **+QQIP** = Tilhæng
* **+QQISSAAQ** = Tilhæng
* **+QQISSAAR** = Tilhæng
* **+QQU** = Tilhæng
* **+QQURTU** = Tilhæng
* **+QQURTUSI** = Tilhæng
* **+QQURTUUQ** = Tilhæng
* **+QQUSAAR** = Tilhæng
* **+QQUTE** = Tilhæng
* **+QQUUQE** = Tilhæng
* **+QQUUTE** = Tilhæng
* **+R** = Tilhæng
* **+RAALLAK** = Tilhæng
* **+RAAR** = Tilhæng
* **+RALAAQ** = Tilhæng
* **+RALAK** = Tilhæng
* **+RAR** = Tilhæng
* **+RASAAR** = Tilhæng
* **+RATAAR** = Tilhæng
* **+RATAR** = Tilhæng
* **+RIAANNAA** = Tilhæng
* **+RIAAT** = Tilhæng
* **+RIANNGUAR** = Tilhæng
* **+RIAQ** = Tilhæng
* **+RIAR** = Tilhæng
* **+RIATAAR** = Tilhæng
* **+RIIR** = Tilhæng
* **+RIP** = Tilhæng
* **+RLAAQ** = Tilhæng
* **+RRAK** = Tilhæng
* **+RRATE** = Tilhæng
* **+RSUR** = Tilhæng
* **+RUJUK** = Tilhæng
* **+RUJUP** = Tilhæng
* **+RUJUUJUTAA** = Tilhæng
* **+RUJUUR** = Tilhæng
* **+RUJUURUTAA** = Tilhæng
* **+RULUP** = Tilhæng
* **+RULUUR** = Tilhæng
* **+RUNAR** = Tilhæng
* **+RUSAAR** = Tilhæng
* **+RUSAQ** = Tilhæng
* **+RUSAR** = Tilhæng
* **+RUTTUR** = Tilhæng
* **+RUUSAAR** = Tilhæng
* **+SAAR** = Tilhæng
* **+SAR** = Tilhæng
* **+SARE** = Tilhæng
* **+SI** = Tilhæng
* **+SIAQ** = Tilhæng
* **+SII** = Tilhæng
* **+SILAT** = Tilhæng
* **+SIMA** = Tilhæng
* **+SIMAAR** = Tilhæng
* **+SINNAA** = Tilhæng
* **+SINNAAA** = Tilhæng
* **+SINNAANNGUR** = Tilhæng
* **+SINNAAQ** = Tilhæng
* **+SINNAR** = Tilhæng
* **+SIR** = Tilhæng
* **+SIUR** = Tilhæng
* **+SIUT** = Tilhæng
* **+SSA** = Tilhæng
* **+SSAALIQI** = Tilhæng
* **+SSAAR** = Tilhæng
* **+SSAMAAQ** = Tilhæng
* **+SSAMAAR** = Tilhæng
* **+SSAQ** = Tilhæng
* **+SSAQQIP** = Tilhæng
* **+SSI** = Tilhæng
* **+SSIP** = Tilhæng
* **+SSUAQ** = Tilhæng
* **+SSUSIQ** = Tilhæng
* **+SUAQ** = Tilhæng
* **+SUAR** = Tilhæng
* **+SUATAAR** = Tilhæng
* **+SUNGAR** = Tilhæng
* **+SUNNI** = Tilhæng
* **+SUNNIP** = Tilhæng
* **+SUR** = Tilhæng
* **+SURE** = Tilhæng
* **+T** = Tilhæng
* **+TA** = Tilhæng
* **+TAAMA** = Tilhæng
* **+TAAQ** = Tilhæng
* **+TAAR** = Tilhæng
* **+TAAVA** = Tilhæng
* **+TALLAP** = Tilhæng
* **+TAQ** = Tilhæng
* **+TAR** = Tilhæng
* **+TARE** = Tilhæng
* **+TARIAARUTE** = Tilhæng
* **+TARIAQ** = Tilhæng
* **+TARIAQAR** = Tilhæng
* **+TARIAR** = Tilhæng
* **+TASSAA** = Tilhæng
* **+TE** = Tilhæng
* **+TIGE** = Tilhæng
* **+TIP** = Tilhæng
* **+TIR** = Tilhæng
* **+TITAAR** = Tilhæng
* **+TITIR** = Tilhæng
* **+TSAALI** = Tilhæng
* **+TSAALIUR** = Tilhæng
* **+TSAP** = Tilhæng
* **+TSIALAK** = Tilhæng
* **+TSIAQ** = Tilhæng
* **+TSIAR** = Tilhæng
* **+TSIISAA** = Tilhæng
* **+TSIP** = Tilhæng
* **+TSIR** = Tilhæng
* **+TTAAQ** = Tilhæng
* **+TTAARLU** = Tilhæng
* **+TTAARMI** = Tilhæng
* **+TTUINNAR** = Tilhæng
* **+TU** = Tilhæng
* **+TUAQ** = Tilhæng
* **+TUAR** = Tilhæng
* **+TUARANNGUU** = Tilhæng
* **+TUATAAR** = Tilhæng
* **+TUGAQ** = Tilhæng
* **+TUKASSAA** = Tilhæng
* **+TUQ** = Tilhæng
* **+TUQAQ** = Tilhæng
* **+TUR** = Tilhæng
* **+TURSUU** = Tilhæng
* **+TURUJUSSUANNGUR** = Tilhæng
* **+TURUJUSSUU** = Tilhæng
* **+TURUJUSSUUSIMA** = Tilhæng
* **+TURUJUSSUUSIMAGALUAR** = Tilhæng
* **+TURUJUSSUUSSA** = Tilhæng
* **+TURUJUU** = Tilhæng
* **+TUSSAA** = Tilhæng
* **+TUSSAAGALUAR** = Tilhæng
* **+TUSSAANNGIKKALUAR** = Tilhæng
* **+TUSSAANNGIT** = Tilhæng
* **+TUSSANNGUR** = Tilhæng
* **+TUSSAQ** = Tilhæng
* **+TUU** = Tilhæng
* **+TUUQ** = Tilhæng
* **+TUUR** = Tilhæng
* **+TUUSAAR** = Tilhæng
* **+TUUSI** = Tilhæng
* **+U** = Tilhæng
* **+UAAR** = Tilhæng
* **+UKU** = Tilhæng
* **+UKUA** = Tilhæng
* **+UMA** = Tilhæng
* **+UMI** = Tilhæng
* **+UMMI** = Tilhæng
* **+UMMIR** = Tilhæng
* **+UNA** = Tilhæng
* **+UR** = Tilhæng
* **+URL** = Tilhæng
* **+USAAQ** = Tilhæng
* **+USAAR** = Tilhæng
* **+USAP** = Tilhæng
* **+USAQ** = Tilhæng
* **+USAR** = Tilhæng
* **+USIQ** = Tilhæng
* **+UTE** = Tilhæng
* **+UTIGE** = Tilhæng
* **+VALLAAQ** = Tilhæng
* **+VALLAAR** = Tilhæng
* **+VIK** = Tilhæng
* **+VIP** = Tilhæng
* **+VISSUAQ** = Tilhæng
* **+VISSUR** = Tilhæng
* **+VVAARIK** = Tilhæng
* **+VVAARIP** = Tilhæng
* **NIAR=TARE=LIR=GALUAR** = Tilhæng
* **SIMAAR=VALLAAR=LIR** = Tilhæng
* **TARIAQAR=LLUAR** = Tilhæng

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
Vore morfofonemer
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

## Flag diacritics

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

## LEXICON Root 
- **  Nomen        ;  ** 
- **  Verbum       ; ** 
- **  oqr          ;  **  partikler og pronominer
- **  ateq         ;  **  proprier (baade personer og steder)
- **  Punctuation  ; ** 
- **  Symbols      ; ** 
- **  numeralier   ; ** 
- **  Forkortelser ; ** 
- **  Akronymer    ; ** 
- **  Pronomen     ; ** 

* * *

<small>This (part of) documentation was generated from [src/fst/root.lexc](https://github.com/giellalt/lang-kal/blob/main/src/fst/root.lexc)</small>

---

