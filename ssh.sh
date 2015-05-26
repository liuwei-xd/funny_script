#!/bin/bash
echo "hostname:"
read NAME
if [ "$NAME" == "lw" ]
   then
#ssh-copy-id lw@219.245.80.21 
set timeout 300
ssh lw@219.245.80.21

elif [ "$NAME" == "sc" ]
   then
#ssh-copy-id sc@219.245.80.29
set timeout 300
ssh sc@219.245.80.29
fi
