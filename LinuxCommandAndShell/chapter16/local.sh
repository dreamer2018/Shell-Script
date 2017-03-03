#!/bin/bash

say='hello world'
said='lalalala'

function fun1 {
    echo $say
    echo $said
    say='hello zhoupan'
    local said='hahahaha'
    echo $say
    echo $said
}
fun1
echo $say
echo $said

