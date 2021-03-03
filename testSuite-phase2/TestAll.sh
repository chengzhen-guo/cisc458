#!/bin/bash
for f in *.pt do
    echo "$f"
    #ssltrace "ptc -o2 -t2 -L ../ptscr/lib/pt "$f".pt" ../ptscr/lib/pt/parser.def -e > test_aj_051.ssltrace-t2-e
done