#!/bin/bash

TMP=/tmp/.tmp.$$

if [ -z "$1" -o -z "$2" ]
then
  echo "Usage: $0 <event> <profile>"
  exit 1
fi

EVENT=$1
DUSER=$2

PASS=`cat /root/provision/$EVENT/passfile.cfg`
~/guidgrabber/bin/list_all_svcs.sh -u $DUSER -P $PASS -w https://spp.opentlc.com > $TMP

labcodes=`cat $TMP|sed "s/.*${DUSER}-//g"|sed 's/\(.*\)-.*/\1 /'|sort|uniq`

echo
echo "   LAB BUILD MONITOR $DUSER"
echo
for labcode in $labcodes
do
  lc=`echo $labcode|cut -f3- -d"-"`
  lconf=`grep "\"$lc\"," /root/guidgrabber/etc/$DUSER/labconfig.csv`
  #type=`echo $lconf|cut -f22 -d,|sed 's/"//g'`
  type=`echo $lconf|sed -e 's/","\|",\|,"\|,,/@/g' | cut -d@ -f22|sed 's/"//g'`

  comp=`cat $TMP|grep ${labcode}-|grep COMPLETED|wc -l`
  if [ -z "$type" ]
  then
    continue
  fi
  build=`cat $TMP|grep ${labcode}-|egrep -v "COMPLETED|FAIL"|wc -l`
  fail=`cat $TMP|grep ${labcode}-|grep FAIL|wc -l`
  echo -ne "$type "
  echo -ne "$labcode "
  echo -ne "completed $comp "
  if [ -n "$build" ]
  then
    echo -ne "building $build "
  else
    echo -ne "building N/A "
  fi
  echo -ne "failed $fail "
  echo

done | column -t


rm -f $TMP

