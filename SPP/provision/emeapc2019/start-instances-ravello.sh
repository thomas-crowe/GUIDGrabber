#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}> [instance-group] [user]"
  exit 1
fi
SESSION=$1

if [ -n "$2" ]
then
  INSTANCES=$2
else
  INSTANCES=25
fi

if [ -n "$3" ]
then
  USER="$3"
else
  USER=generic_pc
fi

/root/provision/emeapc2019/sync_labconfig_from_www.sh $USER

CMD="/root/provision/emeapc2019/start-ravello-session.sh"

case $SESSION in
  'tuesday-1')
     LC=RH01
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'tuesday-2')
     LC=RH04
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=RH07
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=RH02_R
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'wednesday-1')
     LC=RH05
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=AN01
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'wednesday-2')
     LC=RH01_R
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=AN02
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'wednesday-3')
     LC=RH02
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=OCP2_R
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=AN03
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'thursday-1')
     LC=OCP2
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=AN02_R
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=RH06
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'thursday-2')
     LC=AN06
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=SAP1
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  'thursday-3')
     LC=AN07
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=AMM3
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES
     LC=RH07_R
     echo "Deploy $LC"
     $CMD $SESSION $USER $LC $INSTANCES

  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances]"
    exit 1
  ;;
esac
