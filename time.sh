hr=`date +%H`
#read hr
echo $hr
if [ $hr -ge 0 ] && [ $hr -le 12 ]
then
echo "Good morning $USER"
elif [ $hr -ge 12 ] && [ $hr -le 16 ]
then
echo "Good afternoon $USER"
elif [ $hr -ge 16 ] && [ $hr -le 19 ]
then
echo "Good evening $USER"
else
echo "Good night $USER"
fi
