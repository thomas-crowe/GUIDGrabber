#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances] [user]"
  exit 1
fi
SESSION=$1

if [ -n "$2" ]
then
  INSTANCES=$2
else
  INSTANCES=55
fi

OP="deploy_instances"

if [ -n "$3" ]
then
  USER="$3"
else
  USER=generic_summit
fi

/root/provision/summit2019/sync_labconfig_from_www.sh

case $SESSION in
  'test-session1')
     echo "Ravello TC9818"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TC9818 -g 10
  ;;
  'test-session2')
     echo "Ravello TC9818"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TC9818 -g 10
  ;;
  'tuesday-1')
    # 251
     echo "Ravello TC9818"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TC9818 -g 10
     # AWS TC9818 - SHARED predeploy 4/29/2019
    # 252A
     #echo "AWS TE5CC2"
    # 252B
     echo "Ravello T77BC4"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T77BC4
    # 253A
     #echo "AWS T82ACD"
    # 253C
     echo "Ravello TA3036"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TA3036
    # 254A
     echo "Ravello TE9D49"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TE9D49
    # 254B
     # BYO TA1C72
  ;;
  'tuesday-2')
    # 251
     echo "Ravello T625B0"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T625B0
    # 252A
     echo "Ravello TFDD21"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TFDD21
    # 252B
     # BYO T1CEE7
    # 253A
     echo "Ravello T9655E"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T9655E
    # 253C
     echo "Ravello T617BF"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T617BF
    # 254A
     echo "Ravello T7AE23"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T7AE23
    # 254B
     echo "Ravello TA39DD"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TA39DD
  ;;
  'tuesday-3')
    # 251
     echo "Ravello T19FE8"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T19FE8
    # 252A
     # AWS TD6D8A SHARED INTG predeploy 5/2/2019
    # 252B
     # BYO T99D20
    # 253A
     echo "Ravello T1C7B2"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T1C7B2
    # 253C
     # BYO TDAF10
    # 254A
     echo "Ravello T352DF"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T352DF
    # 254B
     echo "Ravello T9655E"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T9655E
  ;;
  'wednesday-1')
    # 251
     #echo "AWS T75E09"
    # 252A
     echo "Ravello T9A495"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T9A495
    # 252B
     # BYO T63F12
    # 253A
     # BYO T0E929
    # 253C
     echo "Ravello TE9D49"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TE9D49
    # 254A
     # AWS T554C3 SHARED Predeploy 5/5 or 5/6
    # 254B
     echo "Ravello T39E04"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T39E04
  ;;
  'wednesday-2')
    # 251
     echo "Ravello TFDD21"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TFDD21
    # 252A
     echo "Ravello T168C8"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T168C8
    # 252B
     echo "Ravello T625B0"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T625Ba
    # 253C
     echo "Ravello T93F1B"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T93F1B
    # 253A
     echo "Ravello TE9D49"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TE9D49
    # 254A
     #echo "AWS TEB93D"
    # 254B
     echo "Ravello T1C7B2"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T1C7B2
  ;;
  'wednesday-3')
    # 251
     # AWS TE050E SHARED INTG Predeploy 5/6
    # 252A
     # AWS T9FDEB SHARED Predeploy 5/6
    # 252B
     # BYO
    # 253A
     echo "Ravello T6D1D5"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T6D1D5
    # 253C
     echo "Ravello T617BF"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T617BF
    # 254A
     #echo "AWS T9FA81"
    # 254B
     echo "Ravello T73EEE"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T73EEE
  ;;
  'thursday-1')
    # 251
     echo "Ravello T02098"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T02098
    # 252A
     echo "Ravello TC9818"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TC9818 -g 10
     # AWS TC9818 - SHARED predeploy 4/29/2019
    # 252B
     echo "Ravello T1C7B2"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T1C7B2
    # 253A
     # AWS T48CED - SHARED predeploy 5/8/2019
    # 253C
     # BYO TAE877
    # 254A
     # BYO T63F12
    # 254B
     echo "Ravello TBBD65"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TBBD65 -g 10
  ;;
  'thursday-2')
    # 251
     echo "Ravello TFDD21"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TFDD21
    # 252A
     echo "Ravello T625B0"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T625B0
    # 252B
     echo "Ravello TC9818"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TC9818 -g 10
     # AWS TC9818 - SHARED predeploy 4/29/2019
    # 253A
     echo "Ravello T9655E"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T9655E
    # 253C
     echo "Ravello TD09CB"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l TD09CB
    # 254A
     # AWS T047CF - SHARED INTG predeploy 5/8/2019
    # 254B
     echo "Ravello T3748C"
     /root/guidgrabber/bin/deploy_session.py -s $SESSION -p $USER -n $INSTANCES -l T3748C
  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances]"
    exit 1
  ;;
esac
