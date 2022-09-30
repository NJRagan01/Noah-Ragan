#!/bin/bash
#Below Is My Calculator Ekeke
# Two arguments are passed as inputs.
# Then it will calculate based of the requested operation
# After Calculation is done it will close
Echo Calculator Time Ekekekekekekekekekekekekekekek
if [[ $# -eq 2 ]] ; then
    # get number1 and number2(number) values from the arguments
    number1=$1
    number2=$2
    # Segment Below Offers Choi  ces
    echo 1. Addition
    echo 2. Subtraction
    echo 3. Multiplication
    echo 4. Division
    echo 5. Exit
    echo Enter your choice:
    read choice
    # Segment below does the required process
    if [[ $choice -eq 1 ]] ; then
        echo +----------------------------------------+
        echo Addition of $number1 and $number2 is $((number1+number2))
        echo +----------------------------------------+
        echo
    elif [[ $choice -eq 2 ]] ; then
        echo +----------------------------------------+
        echo Subtraction of $number1 and $number2 is $((number1-number2))
        echo +----------------------------------------+
        echo
    elif [[ $choice -eq 3 ]] ; then
        echo +----------------------------------------+
        echo Multiplication of $number1 and $number2 is $((number1*number2))
        echo +----------------------------------------+
        echo
    elif [[ $choice -eq 4 ]] ; then
        echo +----------------------------------------+
        echo Division of $number1 and $number2 is $((number1/number2))
        echo +----------------------------------------+
        echo
    elif [[ $choice -eq 5 ]] ; then
        exit
    else
        echo +----------------------------------------+
        echo Invalid choice...
        echo +----------------------------------------+
        echo
    fi
# This segment will run the calculator infinitely unless
# option 5 is given as input
elif [[ $# -eq 0 ]] ; then
    while true
    do
        # Segment below offers choices
        echo 1. Addition
        echo 2. Subtraction
        echo 3. Multiplication
        echo 4. Division
        echo 5. Exit
        echo Enter your choice:
        read choice
        # get operands(numbers) and start computing based on the user's choice
        if [[ $choice -eq 1 ]] ; then
            echo Enter number1 value:
            read number1
            echo Enter number2 value:
            read number2
            echo +----------------------------------------+
            echo Addition of $number1 and $number2 is $((number1+number2))
            echo +----------------------------------------+
            echo
        elif [[ $choice -eq 2 ]] ; then
            echo Enter number1 value:
            read number1
            echo Enter number2 value:
            read number2
            echo +----------------------------------------+
            echo Subtraction of $number1 and $number2 is $((number1-number2))
            echo +----------------------------------------+
            echo
        elif [[ $choice -eq 3 ]] ; then
            echo Enter number1 value:
            read number1
            echo Enter number2 value:
            read number2
            echo +----------------------------------------+
            echo Multiplication of $number1 and $number2 is $((number1*number2))
            echo +----------------------------------------+
            echo
        elif [[ $choice -eq 4 ]] ; then
            echo Enter number1 value:
            read number1
            echo Enter number2 value:
            read number2
            echo +----------------------------------------+
            echo Division of $number1 and $number2 is $((number1/number2))
            echo +----------------------------------------+
            echo
        elif [[ $choice -eq 5 ]] ; then
            exit
        else
            echo +----------------------------------------+
            echo Invalid choice.. Please try again
            echo +----------------------------------------+
            echo
        fi
    done
else
    echo +----------------------------------------+
    echo You either passed too many parameters or too less
    echo than the optimum requirement.
    echo
    echo This program accepts a maximum of 2 arguments or no
    echo argument at all in order to run successfully.
    echo +----------------------------------------+
fi