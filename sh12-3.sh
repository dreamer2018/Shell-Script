#!/bin/bash
# File Name: sh12-3.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Mon 14 Dec 2015 02:31:33 PM CST
function printit(){
    echo "Your choice is $1"
}
echo "This program will print you selection!"
case $1 in
    "one")
        printit 1
        ;;
    "two")
        printit 2
        ;;
    "three")
        printit 3
        ;;
    *)
        echo "Usage $0 {one | two | htree }"
        ;;
esac
