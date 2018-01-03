#!/bin/bash
read filename
echo "Enter the word"
read word
egrep $word $filename
