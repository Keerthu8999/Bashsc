#!/bin/bash
echo 'Enter the Month and year'
#read da
read mo
read yr
amt=5000
var=`date +%d`
var1=`date +%m`
var2=`date +%y`
#echo $var
 a=`expr $var1 - 6`
#echo $a
#echo $var2
echo $amt  'is the current amount'
if [ $mo -eq $var1 ] && [ $yr -eq $var2 ]
then
echo 'No extra amount : '
echo $amt
elif [ $mo -gt $a ] && [ $yr -eq $var2 ]
then
amt=`expr $amt + 500`
echo 'Extra 500 fine amount'
echo $amt
elif [ $mo -gt $a ] && [ $yr -lt $var2 ]
then
amt=`expr $amt + 2000`
echo 'Extra 2000 fine amount'
echo $amt

fi
