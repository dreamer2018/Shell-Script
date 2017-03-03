#!/bin/bash

function arraytest {
    echo "the value is $@"
    local arr_2=$@
    local array_val=`echo $@`
    echo "My Array is:${array_val[*]}"
    echo "arr_2 is $arr_2"
}

myarray=(1 2 3 4 5)
echo "Array is:${myarray[*]}"
arraytest ${myarray[*]}
