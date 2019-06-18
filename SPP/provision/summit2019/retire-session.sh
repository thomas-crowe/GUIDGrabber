#!/bin/bash

usage() {
  echo "Usage: $0 <labcode> <session> <user>"
}

if [ -z "$1" -o -z "$2" -o -z "$3" ]
then
  usage
  exit 1
fi

LABCODE=$1
SES=$2
USER="$3"
PASS=`cat /root/provision/summit2019/passfile.cfg`
/root/guidgrabber/bin/retire_session.py --cfurl https://spp.opentlc.com --cfuser cf-api --cfpass $PASS --session $SES --ufilter $USER --labcode $LABCODE --group 40 --sleep 30
