#!/bin/bash

function loop {
    local array=$@
    for i in ${array[*]}
    do
        echo $i
    done
}

array=(1 2 3 4 5 6)
loop ${array[*]}
