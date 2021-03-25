#!/bin/bash

for f in $(find . -name '*.eOut')
do
    rm $f
done

for f in $(find . -name '*.pt')
do
    $i = "${f:1}"
    echo "=== pti $i ==="
    ssltrace "ptc -o3 -t3 -L ../ptsrc/lib/pt ${i%%.*}.pt" ../ptsrc/lib/pt/semantic.def > ${i%%.*}.eOut
done

echo "=== Test Done. ==="