#!/bin/bash

trap "bash trap.sh" EXIT

for(( count=0; count<=5; count++))
do
    echo "Loop $count"
    sleep 10
done
trap - EXIT
#echo "The End"
