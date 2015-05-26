#!/bin/sh

lstop=168
lstart=1
for loop in 0 1 2 3 4 5 6 7 8 9 
  do
#  echo $loop
  lstop_=$lstop
  lstart_=$lstart
  lstart=`expr 168 \* $loop + 1`
  lstop=`expr $lstart + 7 \* 24 - 1`
    if [ "$lstop" -gt "1664" ]
      then
     lstop=1664
    fi
   mv demo_distance_com*  demo_distance_com"$loop".m
   ls demo_distance_com*
    sleep 0.5s 
   sed -i 's/parfor img_idx = '$lstart_':'$lstop_'/parfor img_idx = '$lstart':'$lstop'/g' demo_distance_com"$loop".m
   cat demo_distance_com"$loop".m | grep parfor
   
#   mv *.pbs saliency_matlab"$loop".m
  sleep 1s 
  
  qsub saliency_matlab.pbs
   sleep 1s
    done
  sed -i 's/parfor img_idx = '$lstart':'$lstop'/parfor img_idx = '1':'168'/g' demo_distance_com"$loop".m
  mv  demo_distance_com*  demo_distance_com"0".m
#  mv  saliency_matlab*.pbs  saliency_matlab"0".m