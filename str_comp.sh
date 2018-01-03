#!/bin/bash
echo 'Enter two Strings'
read a
read b
if [ -z $a ]
then
echo 'String one is empty'
elif [ -z $b ]
then
echo 'String two is empty'
elif [[ $a != $b ]]
then
echo 'Strings are not equal'
else
echo 'Strings are equal'
fi 
echo "Search"
read h
read file
grep $h $file
echo "Length"
echo `expr length $a`
echo "This is Substring"
read sub
read pos
read len
echo ${sub:$pos:$len}
echo "Delete a specific char"
sed 's/[ABC]//g' $file 
