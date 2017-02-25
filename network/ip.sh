#!/bin/bash
for f_ip in $( seq 0 255)
do
    for s_ip in $( seq 0 255)
    do
        full="222.24.${f_ip}.${s_ip}"
        ping -W 1 -c 1 $full > /dev/null
        if [ "$?" == "0" ];then
            echo "${full} up"
            echo "${full} up" >> ip.txt
        else
            echo "${full} down"
        fi
    done
done
