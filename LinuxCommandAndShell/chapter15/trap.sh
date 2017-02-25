#!/bin/bash

trap "echo 'sorry! I have get the Ctrl-C'" SIGINT SIGTERM
echo 'this is trap program'
count=1
while [ "$count" -le 2 ]
do
    echo $count
    (( count++ ))
    sleep 2
done
