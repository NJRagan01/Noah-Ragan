#!/bin/bash

exec < $1 #convenience, not have to refer to the file passed an arg
read header # read/ skip the first line of csv

# IFS (Internal field separator, for CSV: ",")
# read -r: tells not to treat "/" as a special character
# Declares variables for each values from the CSV line to be used in the while loop
while IFS="," read -r fname lname email uname pw
do
  echo "First name: $fname";
  echo "Last name: $lname";
  echo "Email address: $email";
  echo "Username: $uname";
  echo "Password: $pw";
  echo "+---------------------------------+";
done