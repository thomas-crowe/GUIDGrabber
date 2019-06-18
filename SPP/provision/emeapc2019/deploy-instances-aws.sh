#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}> [instances] [user]"
  exit 1
fi
SESSION=$1

if [ -n "$2" ]
then
  INSTANCES=$2
else
  INSTANCES=25
fi

OP="deploy_instances"

if [ -n "$3" ]
then
  USER="$3"
else
  USER=generic_pc
fi

/root/provision/emeapc2019/sync_labconfig_from_www.sh $USER

case $SESSION in
  'tuesday-1')
     LC=OCP1
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=AMM1
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'tuesday-2')
     LC=AI02
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'wednesday-1')
     LC=OCP5
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'wednesday-2')
     LC=CN01
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=OCP6
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'wednesday-3')
     #LC=OCP1_R
     #echo "Deploy $LC"
     #/root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'thursday-1')

  ;;
  'thursday-2')
     LC=AN04
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=CN01_R
     echo "Deploy $LC"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'thursday-3')

  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances]"
    exit 1
  ;;
esac
