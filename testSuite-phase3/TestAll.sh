#!/bin/bash
rm *.eOut
for i in *.pt
do
    echo "=== pti $i ==="
    ssltrace "ptc -o3 -t3 -L ../ptsrc/lib/pt ${i%%.*}.pt" ../ptsrc/lib/pt/semantic.def -e > ${i%%.*}.eOut
done
echo "=== ==="
