#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances] [user]"
  exit 1
fi
SESSION=$1

if [ "$2" ]
then
  INSTANCES=$2
else
  INSTANCES=55
fi

if [ "$3" ]
then
  USER="$3"
else
  USER=generic_summit
fi

CMD="/root/provision/summit2019/start-ravello-session.sh"
case $SESSION in
  'test-session1')
     echo "Ravello TC9818"
     $CMD $SESSION $USER primary  TC9818 10
  ;;
  'test-session2')
     echo "Ravello TC9818"
     $CMD $SESSION $USER primary  TC9818 10
  ;;
  'tuesday-1')
    # 251
     echo "Disabled Ravello TC9818"
     #$CMD $SESSION $USER primary   TC9818 10
     # AWS TC9818 - SHARED predeploy 4/29/2019
    # 252A
     #echo "AWS TE5CC2"
    # 252B
     echo "Ravello T77BC4"
     $CMD $SESSION $USER primary   T77BC4
    # 253A
     #echo "AWS T82ACD"
    # 253C
     echo "Ravello TA3036"
     $CMD $SESSION $USER primary   TA3036
    # 254A
     echo "Ravello TE9D49"
     $CMD $SESSION $USER primary   TE9D49
    # 254B
     # BYO TA1C72
  ;;
  'tuesday-2')
    # 251
     echo "Ravello T625B0"
     $CMD $SESSION $USER primary   T625B0
    # 252A
     echo "Ravello TFDD21"
     $CMD $SESSION $USER primary   TFDD21
    # 252B
     # BYO T1CEE7
    # 253A
     echo "Ravello T9655E"
     $CMD $SESSION $USER primary   T9655E
    # 253C
     echo "Ravello T617BF"
     $CMD $SESSION $USER primary   T617BF
    # 254A
     #echo "Ravello T7AE23"
     #$CMD $SESSION $USER primary   T7AE23
    # 254B
     echo "Ravello TA39DD"
     $CMD $SESSION $USER primary   TA39DD
  ;;
  'tuesday-3')
    # 253A
     echo "Ravello T1C7B2"
     $CMD $SESSION $USER primary   T1C7B2 15 &
    # 254A
     echo "Ravello T352DF"
     $CMD $SESSION $USER primary   T352DF 10

    # 251
     echo "Ravello T19FE8"
     $CMD $SESSION $USER primary   T19FE8 10
    # 252A
     # AWS TD6D8A SHARED INTG predeploy 5/2/2019
    # 252B
     # BYO T99D20

    # 253C
     # BYO TDAF10

    # 254B
     echo "Ravello T9655E"
     $CMD $SESSION $USER primary   T9655E 10
  ;;
  'wednesday-1')
    # 251
     #echo "AWS T75E09"
    # 252A
     echo "Ravello T9A495"
     $CMD $SESSION $USER primary   T9A495
    # 252B
     # BYO T63F12
    # 253A
     # BYO T0E929
    # 253C
     echo "Ravello TE9D49"
     $CMD $SESSION $USER primary   TE9D49
    # 254A
     # AWS T554C3 SHARED Predeploy 5/5 or 5/6
    # 254B
     echo "Ravello T39E04"
     $CMD $SESSION $USER primary   T39E04
  ;;
  'wednesday-2')

# Salvo 1
#     $CMD $SESSION $USER primary   TFDD21 15 &
#     $CMD $SESSION $USER primary   T168C8 15 

# Salvo 2
#     $CMD $SESSION $USER primary   T625B0 15 &
#     $CMD $SESSION $USER primary   T93F1B 15

# Salvo 3
     $CMD $SESSION $USER primary   TE9D49 15 &
     $CMD $SESSION $USER primary   T1C7B2 15


    # 251
#     echo "Ravello TFDD21"
#     $CMD $SESSION $USER primary   TFDD21
    # 252A
#     echo "Ravello T168C8"
#     $CMD $SESSION $USER primary   T168C8
    # 252B
#     echo "Ravello T625B0"
#     $CMD $SESSION $USER primary   T625B0
    # 253A
#     echo "Ravello TE9D49"
#     $CMD $SESSION $USER primary   TE9D49
    # 253C
#     echo "Ravello T93F1B"
#     $CMD $SESSION $USER primary   T93F1B
    # 254A
     #echo "AWS TEB93D"
    # 254B
#     echo "Ravello T1C7B2"
#     $CMD $SESSION $USER primary   T1C7B2
  ;;


  'wednesday-3')
     $CMD $SESSION $USER primary   T73EEE 10

     $CMD $SESSION $USER primary   T6D1D5 15 &
     $CMD $SESSION $USER primary   T617BF 15
   ;;
  'thursday-1')
    # 254B
     echo "Ravello TBBD65"
     $CMD $SESSION $USER none TBBD65 10 &
    sleep 300
    # 252B
     echo "Ravello T1C7B2"
     $CMD $SESSION $USER none T1C7B2 15
    sleep 300
    # 251
     echo "Ravello T02098"
     $CMD $SESSION $USER none T02098 15 &
    sleep 300
    # 252A
     echo "Ravello TC9818"
     $CMD $SESSION $USER none TC9818 10
  ;;
  'thursday-2')
    # 254B
     echo "Ravello T3748C"
     $CMD $SESSION $USER none   T3748C 10 &
    sleep 300
    # 251
     echo "Ravello TFDD21"
     $CMD $SESSION $USER none   TFDD21 15
    sleep 300
    # 253A
     echo "Ravello T9655E"
     $CMD $SESSION $USER none   T9655E 15 &
    sleep 300
    # 252A
     echo "Ravello T625B0"
     $CMD $SESSION $USER none   T625B0 15
    sleep 300
    # 253C
     echo "Ravello TD09CB"
     $CMD $SESSION $USER none   TD09CB 15 &
    sleep 300
    # 252B
     echo "Ravello TC9818"
     $CMD $SESSION $USER none   TC9818 10
  ;;
  'thursday-3')
     echo "Ravello T625B0"
     $CMD $SESSION $USER none   T625B0 20 &
    sleep 300
     echo "Ravello TA39DD"
     $CMD $SESSION $USER none   TA39DD 20
    sleep 300
     echo "Ravello TC9818"
     $CMD $SESSION $USER none   TC9818 15
    sleep 300
     echo "Ravello T9655E"
     $CMD $SESSION $USER none   T9655E 20 &
    sleep 300
     echo "Ravello TE9D49"
     $CMD $SESSION $USER none   TE9D49 20
  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances]"
    exit 1
  ;;
esac
