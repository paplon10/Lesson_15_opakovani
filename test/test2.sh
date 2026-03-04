#!/bin/bash

sort -t';' -k1,1 sifra.txt > sifra_sorted.txt
join -t';' -1 1 -2 1 sifra_sorted.txt alphabet.txt > message.txt
sort -t';' -k2,2n message.txt | cut -d';' -f3 | tr -d '\n' > vysledek2.txt

cat vysledek2.txt
echo""