
sum=0
for entry in {1..10}
do
	sum=`expr $sum + $entry`
###		s=`expr $s + $i 
	echo "$entry"

done
echo "$sum"
exit 0
