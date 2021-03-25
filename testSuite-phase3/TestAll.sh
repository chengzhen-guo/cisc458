#!/bin/bash
find . -name '*.eOut' | xargs rm

for i in *.pt
do
    echo "=== pti $i ==="
    #ssltrace "ptc -o3 -t3 -L ../ptsrc/lib/pt ${i%%.*}.pt" ../ptsrc/lib/pt/semantic.def > ${i%%.*}.eOut
done
echo "=== ==="
