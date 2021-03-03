#!/bin/bash
del *.eOut
for i in *.pt
do
    echo "=== pti $i ==="
    ssltrace "ptc -o2 -t2 -L ../ptsrc/lib/pt ${i%%.*}.pt" ../ptsrc/lib/pt/parser.def -e > ${i%%.*}.eOut
done
echo "=== ==="
