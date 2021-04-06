#!/bin/bash

for f in $(find . -name '*.eOut')
do
    rm $f
done

for f in $(find . -name '*.out')
do
    rm $f
done

for f in $(find . -name '*.pt')
do
    i=${f#.}
    echo "=== pti $f ==="    
    #ptc -o4 -L ../../ptsrc/lib/pt $f > .${i%%.*}.eOut
    ssltrace "ptc -o4 -t4 -L ../../ptsrc/lib/pt $f" ../../ptsrc/lib/pt/coder.def > .${i%%.*}.eOut
    #ssltrace "ptc -o4 -t4 -L ../../ptsrc/lib/pt $f" ../../ptsrc/lib/pt/coder.def -i > .${i%%.*}.eOut
done

echo "=== Test Done. ==="