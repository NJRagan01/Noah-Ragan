#!bin/bash

echo "Input numbers"
read num1 num2 num3 num4 num5 num6 num7 num8 num9 num10
array=($num1 $num2 $num3 $num4 $num5 $num6 $num7 $num8 $num9 $num10)
pos=0
neg=0
for num in ${array[@]}
do
    if [[ $num =~ ^[[:digit:]]+$ ]] 
    then
    pos=$(( $pos + 1 ))
    else
    neg=$(( $neg + 1 ))
    fi
done
echo "${pos} positive numbers. ${neg} negative numbers."
