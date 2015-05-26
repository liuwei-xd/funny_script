    #!/bin/sh
    if [ -z $1 ];then
    echo "Please input ipaddress"
    exit
    fi
    ip=$1

    filestat=$(ping -c1 $ip |grep transmitted |awk '{print $4}')
    if [ $filestat -eq 0 ];then
    echo "$ip is not online"
    exit
    fi
    ping $ip -c1 > /dev/null
    mac=`arp $ip |awk '{print $3}'|grep ":"`
    name=$(/usr/bin/nbtscan $ip  |awk '{print $2}' |cut -d "\\" -f2)
    echo "Address:$ip,HWaddress:$mac,Hostname:$name"

    mysql -uroot -p123456 mac -e  "insert into mac_addr_hostname(ip,mac,hostname) values ('$ip','$mac','$name')
