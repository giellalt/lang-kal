
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
We import tag declaration from `../../src/cg3/tagdeclaration.cg3`
Todo: Make disambiguation.cg3 do the same

Declare tags not declared in disambiguation.cg3
(TODO: Perhaps they should have been declared there as well)

* LIST QAR = QAR ; 

### Tags used only here

* LIST QMARK = QMARK ; 

## Grammarchecker tags

## Rule section

ADD 
ADD 

ADD 
ADD 

ADD 
ADD 
ADD 

ADD 
ADD 

* * *
<small>This (part of) documentation was generated from [tools/grammarcheckers/grammarchecker.cg3](https://github.com/giellalt/lang-kal/blob/main/tools/grammarcheckers/grammarchecker.cg3)</small>