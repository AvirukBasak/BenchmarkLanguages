#!/bin/bash

function run_code
{
    number=$1;
    if (( $number == 1 ))
    then
        echo 1;
    else
        num1=$number
        num2=$number
        for i in {0..999}
        do
            num2=$(( num2 * number ))
        done
        num=$( run_code $(( num1 - 1 )) );
        echo $(( num2 * num ));
    fi

}

run_code 100 > /dev/null;
