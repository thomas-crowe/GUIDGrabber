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
CMD="/root/guidgrabber/bin/deploy_session.py"

case $SESSION in
  'tuesday-1')
     LC=RH01
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'tuesday-2')
     LC=RH04
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=RH07
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=RH02_R
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'wednesday-1')
     LC=RH05
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=AN01
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'wednesday-2')
     LC=RH01_R
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=AN02
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'wednesday-3')
     LC=RH02
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=OCP2_R
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=AN03
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'thursday-1')
     LC=OCP2
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=AN02_R
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=RH06
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  'thursday-2')
     LC=AN06
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=SAP1
     echo "Deploy $LC"
     ((IN=$INSTANCES*2))
     $CMD -s $SESSION -p $USER -n $IN -l $LC

  ;;
  'thursday-3')
     LC=AN07
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=AMM3
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC
     LC=RH07_R
     echo "Deploy $LC"
     $CMD -s $SESSION -p $USER -n $INSTANCES -l $LC

  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}> [instances]"
    exit 1
  ;;
esac
