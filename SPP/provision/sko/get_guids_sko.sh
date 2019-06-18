#!/bin/bash

TMP=/tmp/.ag.$$
/root/guidgrabber/bin/getguids.py --cfurl https://spp.opentlc.com --cfuser cf-api --cfpass 1b9d8ecd-74cc-42a4-b105-49493d9e4af0 --catalog Summit --item DEV_SANDBOX_OCP4 --out $TMP --ufilter generic_sko
scp -q $TMP www.opentlc.com:/var/www/guidgrabber/etc/generic_sko/availableguids-lab1.csv
rm -f $TMP
ssh www.opentlc.com 'chown apache:apache /var/www/guidgrabber/etc/generic_sko/availableguids-lab1.csv'
ssh www.opentlc.com 'restorecon /var/www/guidgrabber/etc/generic_sko/availableguids-lab1.csv'
