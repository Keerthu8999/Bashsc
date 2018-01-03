#!/bin/bash
read filename
grep 'A\|S' $filename
echo -n
grep "[[:digit:]]\{8\}[[:space:]][(a-k)]" $filename
sed "s_09_10_g" $filename
sed '/40/d' < $filename
grep '.*nn*.' $filename
awk '{ print $1 }' $filename
