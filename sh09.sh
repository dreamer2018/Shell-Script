#!/bin/bash
# File Name: sh09.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Tue 08 Dec 2015 01:52:41 PM CST

if [ $# -lt 1 ] ; then 
    echo "You MUST input canshu"
elif [ "$1" == "hello" ] ; then 
    echo "Hello ,how are you ?"
else
    echo "you Must Inout Hello"
fi
