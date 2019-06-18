#!/bin/bash

usage() {
  echo "Usage: $0 <session> <user> <primary|secondary> <labcode> <group>"
}

if [ -z "$1" -o -z "$2" -o -z "$3" -o -z "$4" ]
then
  usage
  exit 1
fi

SES=$1
USER=$2
HA=$3
LABCODE=$4
if [ -z "$5" ]
then
  GROUP=30
else
  GROUP="$5"
fi

PASS=`cat /root/provision/summit2019/passfile.cfg`
/root/guidgrabber/bin/start_ravello_session.py --cfurl https://spp.opentlc.com --cfuser cf-api --cfpass $PASS --session $SES --ufilter $USER --labcode $LABCODE --group $GROUP --sleep 120 --ha $HA
