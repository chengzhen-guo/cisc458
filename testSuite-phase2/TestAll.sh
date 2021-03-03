#!/bin/bash
del *.eOut
for i in *.pt
do
    echo "=== pti $i ==="
    ssltrace "ptc -o2 -t2 -L ../ptscr/lib/pt ${i%%.*}.pt" ../ptscr/lib/pt/parser.def -e > ${i%%.*}.eOut
done
echo "=== ==="
