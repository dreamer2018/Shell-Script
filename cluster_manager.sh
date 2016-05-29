#!/bin/bash
function status()
{
    for sub in $(seq 2 6)
    do
        ip="192.168.30.$sub"
        ping -W 1 -c 1 $ip > /dev/null
        if [ "$?" == "0" ];then
            echo "Server_$(($sub-1)) IP:$ip Status: Alive"
        else
            echo "Server_$(($sub-1)) IP:$ip Status: Dead"
        fi
        sleep 1
    done
}

function stop()
{
    for sub in $( seq 3 6)
    do
        ip="192.168.30.$sub"
        ping -W 1 -c 1 $ip > /dev/null
        if [ "$?" == "0" ];then  #保证服务器在或者的情况下，才能正常关闭
            ssh "root@$ip" 'poweroff'
            echo "Server_$(($sub-1)) $ip poweroff success !"
        else
            echo "Server_$(($sub-1)) $ip poweroff fail !"
        fi
        sleep 1
    done
}

function command()
{
    if [ "$#" == "1" ];then #如果只有命令参数，则表示对集群所有的主机起作用
        for sub in $( seq 3 6)
        do
            ip="192.168.30.$sub"
            if [ "$?" == "0" ];then
                ssh "root@$ip" "$1"
                echo "Execuse To Server_$(( $sub-1 )) IP:$ip Command:$1"
            else
                echo "$ip fail"
            fi
            sleep 1
        done
    elif [ "$#" == "2" ];then  #指定主机
        ip="192.168.30.$(($1+1))"
        echo "Execuse To Server_$1 IP:$ip Command:$2"
        ssh  "root@$ip" "$2"
    fi
}
function help()
{
    echo "Usage:"
    echo "      cluster_manager.sh command  向所集群所有主机发送command命令"
    echo "      cluster_manager.sh number command 向集群number号主机发送command命令"
    echo "      cluster_manager.sh stop 关闭集群所有主机"
    echo "      cluster_manager.sh status 检测集群所有主机状态"
}

function test()
{
    echo $#
    if [ $# -gt 0 ];then
        echo 'test'
        for sub in $( seq 1 $# )
        do
            echo ${$sub}
        done
    fi
}
#status
#stop
#command $1 $2
if [ "$#" == "1" ];then
    if [ "$1" == "stop" ];then
        stop
    elif [ "$1" == "status" ];then
        status
    elif [ "$1" == "help" ];then
        help
    else
        command $1
    fi
elif [ "$#" == "2" ];then
    command $1 $2
else
    help
fi
