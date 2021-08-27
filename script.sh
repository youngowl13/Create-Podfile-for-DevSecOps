#!/bin/bash


cat Package.resolved | grep 'package\|version' >p.txt

cat p.txt | grep package | awk {'print $2'} | sed 's/\"//g' | tr ',' \ >1


cat p.txt | grep version | awk {'print $2'} | sed 's/\"//g' >2

cat Package.resolved | grep http | awk {'print $2'} | tr ',' \ | sed "s/\"/'/g" | sed -e 's/^/source /' > Final




ruby a.rb > Finalfile

cat Finalfile >>Final


rm p.txt
rm 1
rm 2
echo "Podfile dependecy created with name 'Final'"
