#!/bin/bash
# File Name: net_start.sh
# Author: ZhouPan / github:dreamer2018 
# Mail: zhoupans_mail@163.com
# Blog: blog.csdn.net/it_dream_er
# Function:
# Created Time: 2016年03月14日 星期一 14时07分03秒

while true;
do
    #检测192.168.20.1服务器上的./connect.sh进程是否还活着，活着则返回>1
    exist=$( ssh root@192.168.20.1 ps aux | grep './conn' | wc -l )
    #检测网络是否通着
    ping -W 1 -c 1 106.38.241.48 > /dev/null
    #如果网络是通着的话，network值就为0
    network=$?
    #如果网络不通或者conn.sh进程死掉了，就重新启动
    if [ $exist -lt 1 ] || [ $network -gt 0 ];then
        #重新启动conn.sh脚本
        ssh root@192.168.20.1 nohup ./conn.sh > /dev/null &
        #记录日志
        echo $(date) "./conn.sh Restart" >> start.log
    else
        #休眠五秒
        sleep 5
    fi
done
