#!/bin/bash

usage() {
  echo "Usage: $0 <session> <user> <labcode> <group>"
}

if [ -z "$1" -o -z "$2" -o -z "$3" ]
then
  usage
  exit 1
fi

SES=$1
USER=$2
LABCODE=$3
if [ -z "$4" ]
then
  GROUP=25
else
  GROUP="$5"
fi

PASS=`cat /root/provision/emeapc2019/passfile.cfg`
/root/guidgrabber/bin/start_ravello_session.py --cfurl https://spp.opentlc.com --cfuser cf-api --cfpass $PASS --session $SES --ufilter $USER --labcode $LABCODE --group $GROUP --sleep 120
