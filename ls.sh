#!/bin/bash
for entry in `ls`
do
echo $(wc $entry)
done
