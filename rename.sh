#!/bin/sh


for ((loop=1;loop<927;loop++)) 
  do
      echo $loop
      oldname=`head -n $loop "test.txt" | tail -n 1`
      echo $oldname
      oldname=${oldname:1:20}
      echo $oldname
      cp ./isun_images/$oldname*  ./newname_val/$loop.jpg
      
  done
