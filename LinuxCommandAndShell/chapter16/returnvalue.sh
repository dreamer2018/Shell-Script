#!/bin/bash

function returnval {
    read -p "Enter Your Number:" value
    echo $[ $value * 2 ]
}

val=`returnval`
echo "The return value:$val"
