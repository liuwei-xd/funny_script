#!/bin/bash
echo "hostname:"
read NAME
if [ "$NAME" == "lw" ]
   then
#ssh-copy-id lw@192.168.1.1 
set timeout 300
ssh lw@192.168.1.1

elif [ "$NAME" == "sc" ]
   then
#ssh-copy-id sc@192.168.1.1
set timeout 300
ssh sc@192.168.1.1
fi
