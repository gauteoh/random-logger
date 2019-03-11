#!/bin/sh
while [ 1 ]
do
   waitTime=$(shuf -i 1-5 -n 1)
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-4 -n 1)
   d=`date -Iseconds`
   case "$instruction" in
      "1") echo "160.46.226.165"
      ;;
      "2") echo "151.101.0.81"
      ;;
      "3") echo "172.217.16.174"
      ;;
      "4") echo "195.88.54.16"
      ;;
   esac
done
