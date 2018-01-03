echo -n 'Enter a number'
read n
rem=0
sum=0
while [ $n -gt 0 ]
do
###rem=$(( $n % 10 ))
#sum=$(( $sum + $rem ))
#n=$(( $n / 10 ))
rem=`expr $n % 10`
sum=`expr $sum + $rem`
n=`expr $n / 10`
done
echo "$sum"

