#!/bin/bash
for f in *.pt; do
    echo "${f%%.*}"
    #ssltrace "ptc -o2 -t2 -L ../ptscr/lib/pt $f.pt" ../ptscr/lib/pt/parser.def -e > $f.eOut
done