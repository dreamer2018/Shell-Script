#!/bin/bash
function mutle {
    local val1
    local val2
    val1=(`echo $@`)
    val2=(`echo $@`)
    count=$[ $# - 1 ]
    for (( i=0 ; i <= $count ; i++ ))
    do
        val2[$i]=$[ ${val1[$i]} * 2 ]
    done
    echo ${val2[*]}
}

arr=(1 2 3 4 5 6)
array=`mutle ${arr[*]}`
echo ${array[*]}
