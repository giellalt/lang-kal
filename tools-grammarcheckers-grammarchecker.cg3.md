
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

### Tags used only here

- LIST QMARK = QMARK ; 

## Grammarchecker tags

- LIST @CODE@ellipsis = @CODE@ellipsis ; 
- LIST @CODE@guillemets = @CODE@guillemets ; 
- LIST @CODE@typo = @CODE@typo ; 

- LIST @CODE@msyn-arg-trm-ins = @CODE@msyn-arg-trm-ins ; 
- LIST @CODE@msyn-arg-ins-trm = @CODE@msyn-arg-ins-trm ; 
- LIST @CODE@msyn-arg-abs-rel = @CODE@msyn-arg-abs-rel ; 

- MAPPING-PREFIX = @CODE@ ; 

## Rule section

### Speller suggestions rule
add &SUGGESTWF to any spelling suggestion
that we actually want to suggest to the user.
The simplest is to just add it to all spelled words:

@RULENAME@msyn-arg-abs-rel

### Grammatical rules

#### Verb valency rules

ADD:msyn-arg-trm-ins

ADD:msyn-arg-trm-ins

ADD:msyn-arg-ins-trm

ADD:msyn-arg-ins-trm

ADD:msyn-arg-abs-rel

ADD:msyn-arg-abs-rel

### Simple punctuation rules

Rules for quotation marks.

* * *
<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-kal/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>