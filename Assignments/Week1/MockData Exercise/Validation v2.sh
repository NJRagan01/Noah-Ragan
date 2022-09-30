#!/bin/bash
#Greets user and shows their choices
# Segment Below Offers Choices
    echo "Hello! Please choose one of the following!"
    echo 1. Display UserInfo
    echo 2. Add new UserInfo
    echo 3. Exit
    echo Enter your choice:
    read choice
# Segment below does the required process
    if [[ $choice -eq 1 ]] ; then
        read -p "What is your first name: " fname;
        sh parser.sh MOCK_DATA.csv | grep -A5 "First name: $fname$"
    
    elif [[ $choice -eq 2 ]] ; then
        read -p "enter first name: " fname;
	    read -p "enter last name: " lname;
	    read -p "enter email: " email;
	    read -p "enter username: " username;
	    read -p "enter password: " password;
	
    echo "$fname,$lname,$email,$username,$password" >> MOCK_DATA.csv; #adds data to  designated csv file
    
	echo "UserInfo added!"
    elif [[ $choice -eq 3 ]] ; then
        exit
    else
        echo +----------------------------------------+
        echo Invalid choice...
        echo +----------------------------------------+
        echo
    fi


    