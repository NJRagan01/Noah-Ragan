#!/bin/bash
echo "Enter a String : "
read string
 
i=0
len=${#string}
 
#get the middle value up to which the comparison would be done
mid=$(($len/2))
 
while [ $i -lt $mid ]
  do
    if [ "${string:$i:1}" != "${string: -$(($i+1)):1}" ]
      then
      echo "\"$string\" is not a Palindrome"
      exit
    fi
    i=$(($i+1))
done
echo "\"$string\" is a Palindrome"
