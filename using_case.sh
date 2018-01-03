#!/bin/bash
echo 'Enter a single digit number'
read num
case $num in
1) echo 'Number is one'
;;
2) echo 'Number is two'
;;
3) echo 'Number is three'
;;
4) echo 'Number is four'
;;
5) echo 'Number is five'
;;
6) echo 'Number is six'
;;
7) echo 'Number is seven'
;;
8) echo 'Number is eight'
;;
9) echo 'Number is nine'
;;
0) echo 'Number is zero'
;;
*) echo 'Invalid number'
esac

