#!/bin/bash

function run_code
{
    number=$1;
    if (( $number == 1 ))
    then
        echo 1;
    else
        num=$( run_code $(( number - 1 )) );
        echo $(( number * num ));
    fi

}

run_code 100 > /dev/null;
