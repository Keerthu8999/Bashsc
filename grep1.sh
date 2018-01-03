#!/bin/bash
echo "Enter the filename"
read filename
echo "Enter the word"
read word
grep $word $filename
