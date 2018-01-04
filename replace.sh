#!/bin/bash
rm -rf processed_output/*
mkdir -p processed_output
cd raml;
for f in *.raml; do 
`sed -i 's/# %RAML 0.8/#%RAML 0.8/' $f;`&&`sed -i 's/\[\]/\[getResponse\]/' $f;`&&`sed -i -f ../replace_schema.sed $f`&&`sed -i -f ../replace_traits.sed $f`; 
 echo 'done replace schema & traits for:'$f;
 done;
 for f in *.raml; do `oas-raml-converter --from RAML --to RAML $f > ../processed_output/$f`; echo 'converted from 0.8 to 1.0:'$f; done;
 for f in ../processed_output/*.raml; do `raml2html $f > ${f%.*}.html`; echo 'done convert from raml to html:'$f; done;
 for f in ../processed_output/*.raml; do `oas-raml-converter --from RAML --to OAS20 $f > ../processed_output/${f%.*}.json`; echo 'done convert from raml 1.0 to swagger 2.0'; done;