#!/bin/bash

if [ -z "$1" -o -z "$2" ]
then
  echo "Usage: $0 <labcode> <instances> [session] [user]"
  exit 1
fi
DAY=$1


if [ -n "$2" ]
then
  INSTANCES=$2
else
  INSTANCES=55
fi

LABCODE=$1

OP="deploy_instances"

if [ -n "$3" ]
then
  SES="-s $3"
else
  SES=""
fi

if [ -n "$4" ]
then
  USER="$4"
else
  USER=generic_summit
fi

/root/provision/summit2019/sync_labconfig_from_www.sh

echo "Deploying $LABCODE"
/root/guidgrabber/bin/deploy_session.py -p $USER -n $INSTANCES -l $LABCODE $SES
