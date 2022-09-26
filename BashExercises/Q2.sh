#!/bin/bash
echo "How many number of Fibonacci series you want to print"
read num
if [[ -z $num ]]
then
        echo "You entered nothing try next time"; exit
fi

echo -n "0 1"
b[0]=0
b[1]=1
b[$num]=0

for((i=2; i<num;i++))
do
        let s="i-1"
        let t="i-2"
        let b[$i]="b[s]+b[t]"

        # OR
        #b[$i] = `expr ${b[$s]} + ${b[$t]}`

        echo -n " ${b[$i]} "

done