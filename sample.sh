#!/bin/bash
 # remember - Berkeley ls -l has 8 fields, System V has 9
{
if (NF == 8) {
print $3, $8;
} else if (NF == 9) {
print $3, $9;
}
}=`expr($var1 - 3)`
