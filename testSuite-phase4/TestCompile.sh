#!/bin/bash

for f in $(find . -name '*.eOut')
do
    rm $f
done

for f in $(find . -name '*.pt')
do
    i=${f#.}
    echo "=== pti $f ==="    
    ssltrace "ptc -o4 -t4 -L ../ptsrc/lib/pt $f" ../ptsrc/lib/pt/coder.def > .${i%%.*}.eOut
done

echo "=== Test Done. ==="