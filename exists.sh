#!/bin/bash
echo 'Enter the file name'
read fn
if [ -e $fn ]
then
echo 'File exists'
else
echo 'File doesnot exist'
fi

