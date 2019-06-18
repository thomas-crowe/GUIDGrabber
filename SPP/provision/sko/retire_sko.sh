#!/bin/bash

IGNORE_LIST="a28e|f688"

ssh www.opentlc.com 'rm -f /var/www/guidgrabber/etc/generic_sko/assignedguids-lab1.csv /var/www/guidgrabber/etc/generic_sko/availableguids-lab1.csv'

/root/guidgrabber/bin/retire_svcs.sh -w https://spp.opentlc.com -u admin -P 'Aeth5ohj4p' -c Summit -i DEV_SANDBOX_OCP4 -g 5 -n -l lab1 -f generic_sko

cd /home/opentlc-mgr/deployer_logs
clear
while true
do
  clear
  echo "AWS Deletion monitor"
  echo
  fc=0
  for file in dev-sandbox-ocp4*.log
  do
    if [ ! -f $file ]
    then
      continue
    fi
    lc=`cat $file|wc -l`
    if [ $lc -le 1 ]
    then
      #echo "$file is stale"
      continue
    else
      test=`echo $file|egrep "$IGNORE_LIST"`
      if [ -z "$test" ]
      then
        (( fc = $fc + 1))
        #echo "Still deleting $file"
      #else
        #echo "Ignoring $file"
      fi
    fi
  done
  if [ $fc == 0 ]
  then
    echo
    echo "***All environments completely deleted from AWS!***"
    echo
    exit
  fi
  echo "Environments still deleting in AWS: $fc"
  sleep 2
done
