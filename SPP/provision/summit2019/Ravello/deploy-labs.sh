#!/bin/bash

LAB_CODE=$1
REGION=$2
SESSION=$3

BLUEPRINT=$(grep ${LAB_CODE} /root/guidgrabber/etc/generic_summit/labconfig.csv| awk -F, '{print $12}'|sed -e 's/\"//g')
BAREMETAL=$(grep ${LAB_CODE} /root/guidgrabber/etc/generic_summit/labconfig.csv| awk -F, '{print $21}'|sed -e 's/\"//g')

echo "\
/root/guidgrabber/bin/order_svc.sh \
-w https://spp.opentlc.com \
-u generic_summit \
-P 1b9d8ecd-74cc-42a4-b105-49493d9e4af0 \
-c Deployers \
-i 'Ravello Lab Deployer' \
-t 55 -n \
-d 'autostart=f;noemail=t;pwauth=t;check=t;expiration=7;runtime=8;labCode=${LAB_CODE};city=boston;salesforce=summit;notes=DeployedWithGuidGrabber;session=${SESSION};blueprint=${BLUEPRINT};bm=${BAREMETAL};region=${REGION}' \
-g 40 -p 5 \
"
