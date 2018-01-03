read a
read b

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

val=`expr $a \* $a`
echo "Square of $a is $val"

i=`expr $a \* $a`
val=`expr $a \* $i`
echo "Cube of $a is $val"

echo "Log"
echo "l($a)" | bc -l

echo "Square root"
echo "sqrt($a)" | bc -l

echo "Sin"
echo "s($a)" | bc -l

echo "Cos"
echo "c($a)" | bc -l

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi
