#!/bin/bash

for f in $(find . -name '*.eOut')
do
    rm $f
done

for i in $(find . -name '*.pt')
do
    echo "=== pti $i ==="
    echo "=== pti ${i:1%%.*} ==="
    ssltrace "ptc -o3 -t3 -L ../ptsrc/lib/pt ${i%%.*}.pt" ../ptsrc/lib/pt/semantic.def > ${i%%.*}.eOut
done

echo "=== Test Done. ==="