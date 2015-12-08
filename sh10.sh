#!/bin/bash
# File Name: sh10.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: Tue 08 Dec 2015 02:19:06 PM CST
echo "Now, I will detect you Linux Services "
echo -e "The www,ftp,ssh,amd mail will be detect! \n"

#检测80端口是否打开
testing=$( netstat -tuln | grep ":80" )
if [ "$testing" != "" ]; then
    echo "www services is running in your system!"
fi

#检测22端口是否打开
testing=$( netstat -tuln | grep ":22" )
if [ "$testing" != "" ]; then
    echo "ssh services is running in your system!"
fi

#检测21端口是否打开
testing=$( netstat -tuln | grep ":21" )
if [ "$testing" != "" ]; then
    echo "ftp services is running in your system"
fi

#检测25端口是否打开
testing=$( netstat -tuln | grep ":25" )
if [ "$testing" != "" ]; then
    echo "mail services is running in your system"
fi

