#!/bin/bash

function run_code
{
    number=$1
    if (( $number == 1 ))
    then
        echo 1;
    else
        num1=$number
        num2=$number
        for (( i = 0; i <= $(( number * 1000 )); i++ ))
        do
            num2=$(( num2 * number ))
        done
        num=$( run_code $(( num1 - 1 )) )
        echo $(( num2 * num ))
    fi
}

run_code 10 > /dev/null
