#!/bin/bash

if [ -z "$1" ]
then
  count=150
else
  count=$1
fi

/root/guidgrabber/bin/order_svc.sh -w https://spp.opentlc.com -u generic_sko -P 'TeST123!Go' -c Summit -i DEV_SANDBOX_OCP4 -g 5 -n -d 'expiration=7;runtime=168;region=na;nodes=3;workload=sandbox;labCode=lab1' -t $count
