#!/bin/sh
#sleep 60s
while true
do
    #echo "1234"
    STRSTAR="+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    STRING='这是通过远程登陆发送的消息:'
    STRING2='  XX，你好.今天晚上除了发邮件之外再给你另外一个选择.'
    STRING3='明天请XXX和XXX吃顿大餐.'
gnome-terminal -t "cacheserver" -x bash -c "echo $STRSTAR|pv -qL10;
echo $STRING|pv -qL10;
echo $STRING2|pv -qL7;
echo $STRING3|pv -qL5;
date|pv -qL3;
echo $STRSTAR|pv -qL15;
#sleep 10s
#asciiview ./Desktop/Firefox_wallpaper.png -driver curses;
exec bash;"
sleep 10s
done

