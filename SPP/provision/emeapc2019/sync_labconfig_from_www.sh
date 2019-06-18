#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <user>"
  exit 1
fi
USER=$1

scp www.opentlc.com:/var/www/guidgrabber/etc/$USER/labconfig.csv /root/guidgrabber/etc/$USER
