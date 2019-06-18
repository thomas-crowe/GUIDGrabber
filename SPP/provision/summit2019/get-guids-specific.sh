#!/bin/bash

if [ -z "$1" -o -z "$2" -o -z "$3" ]
then
  echo "Usage: $0 <labcode> <session> <primary|secondary> [initialize]"
  echo "Danger: initialize = delete assigned GUIDs! Only if switching to secondary or if initial run."
  exit 1
fi

LABCODE=$1
SESSION=$2
HA=$3

USER=generic_summit
#USER=generic_tester
#USER=generic_ravello_loadtest

/root/guidgrabber/bin/get_session_guids.py --labcode $LABCODE --profile $USER --session $SESSION --ha $HA

scp /root/guidgrabber/etc/$USER/availableguids-$LABCODE.csv www.opentlc.com:/var/www/guidgrabber/etc/$USER/
ssh www.opentlc.com "chown -R apache:apache /var/www/guidgrabber/etc/$USER/"

if [ "$4" == "initialize" ]
then
  ssh www.opentlc.com "rm -f /var/www/guidgrabber/etc/$USER/assignedguids-$LABCODE.csv"
fi
