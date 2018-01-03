echo 'Enter a number'
read num
read i
if [ $num -lt $i ]
then
echo 'Lesser'
elif [ $num -gt $i ]
then
echo 'Greater'
else
echo 'Equal'
fi
