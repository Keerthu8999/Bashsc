#!/bin/bash
echo "Names from a to g"
awk '{print $1}' ag.txt 
echo "Names from h to n"
awk '{print $1}' hn.txt 
echo "Names from p to y"
awk '{print $1}' py.txt
echo -n "Find"

