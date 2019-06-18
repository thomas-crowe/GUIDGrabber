#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}>"
  exit 1
fi
SESSION=$1
USER=generic_summit

CMD="/root/provision/summit2019/retire-session.sh"
case $SESSION in
  'tuesday-1')
    # 251
     echo "Ravello TC9818"
     $CMD   TC9818 $SESSION $USER
     # AWS TC9818 - SHARED predeploy 4/29/2019
     #$CMD   TC9818-AD $SESSION $USER
    # 252A
     #echo "AWS TE5CC2"
     $CMD   TE5CC2 $SESSION $USER
    # 252B
     echo "Ravello T77BC4"
     $CMD   T77BC4 $SESSION $USER
    # 253A
     #echo "AWS T82ACD"
     $CMD   T82ACD $SESSION $USER
    # 253C
     echo "Ravello TA3036"
     $CMD   TA3036 $SESSION $USER
    # 254A
     echo "Ravello TE9D49"
     $CMD   TE9D49 $SESSION $USER
    # 254B
     # BYO TA1C72
  ;;
  'tuesday-2')
    # 251
     echo "Ravello T625B0"
     $CMD   T625B0 $SESSION $USER
    # 252A
     echo "Ravello TFDD21"
     $CMD   TFDD21 $SESSION $USER
    # 252B
     # BYO T1CEE7
    # 253A
     echo "Ravello T9655E"
     $CMD   T9655E $SESSION $USER
    # 253C
     echo "Ravello T617BF"
     $CMD   T617BF $SESSION $USER
    # 254A
     #echo "Ravello T7AE23"
     $CMD   T7AE23 $SESSION $USER
    # 254B
     echo "Ravello TA39DD"
     $CMD   TA39DD $SESSION $USER
  ;;
  'tuesday-3')
    # 251
     echo "Ravello T19FE8"
     $CMD   T19FE8 $SESSION $USER
    # 252A
     # AWS TD6D8A SHARED INTG predeploy 5/2/2019
     $CMD TD6D8A $SESSION $USER
    # 252B
     # BYO T99D20
    # 253A
     echo "Ravello T1C7B2"
     $CMD   T1C7B2 $SESSION $USER
    # 253C
     # BYO TDAF10
    # 254A
     echo "Ravello T352DF"
     $CMD   T352DF $SESSION $USER
    # 254B
     echo "Ravello T9655E"
     $CMD   T9655E $SESSION $USER
  ;;
  'wednesday-1')
    # 251
     #echo "AWS T75E09"
     $CMD   T75E09 $SESSION $USER
    # 252A
     echo "Ravello T9A495"
     $CMD   T9A495 $SESSION $USER
    # 252B
     # BYO T63F12
    # 253A
     # BYO T0E929
    # 253C
     echo "Ravello TE9D49"
     $CMD   TE9D49 $SESSION $USER
    # 254A
     # AWS T554C3 SHARED Predeploy 5/5 or 5/6
     $CMD   T554C3 $SESSION $USER
    # 254B
     echo "Ravello T39E04"
     $CMD   T39E04 $SESSION $USER
  ;;
  'wednesday-2')
    # 251
     echo "Ravello TFDD21"
     $CMD   TFDD21 $SESSION $USER
    # 252A
     echo "Ravello T168C8"
     $CMD   T168C8 $SESSION $USER
    # 252B
     echo "Ravello T625B0"
     $CMD   T625B0 $SESSION $USER
    # 253A
     echo "Ravello TE9D49"
     $CMD   TE9D49 $SESSION $USER
    # 253C
     echo "Ravello T93F1B"
     $CMD   T93F1B $SESSION $USER
    # 254A
     echo "AWS TEB93D"
     $CMD   TEB93D $SESSION $USER
    # 254B
     echo "Ravello T1C7B2"
     $CMD   T1C7B2 $SESSION $USER
  ;;
  'wednesday-3')
    # 251
     # AWS TE050E SHARED INTG Predeploy 5/6
     $CMD   TE050E $SESSION $USER
    # 252A
     # AWS T9FDEB SHARED Predeploy 5/6
    # 252B
     # BYO
    # 253A
     echo "Ravello T6D1D5"
     $CMD   T6D1D5 $SESSION $USER
    # 253C
     echo "Ravello T617BF"
     $CMD   T617BF $SESSION $USER
    # 254A
     #echo "AWS T9FA81"
    # 254B
     echo "Ravello T73EEE"
     $CMD   T73EEE $SESSION $USER
  ;;
  'thursday-1')
    # 251
     echo "Ravello T02098"
     $CMD   T02098 $SESSION $USER
    # 252A
     echo "Ravello TC9818"
     $CMD   TC9818 $SESSION $USER
     # AWS TC9818 - SHARED predeploy 4/29/2019
    # 252B
     echo "Ravello T1C7B2"
     $CMD   T1C7B2 $SESSION $USER
    # 253A
     # AWS T48CED - SHARED predeploy 5/8/2019
    # 253C
     # BYO TAE877
    # 254A
     # BYO T63F12
    # 254B
     echo "Ravello TBBD65"
     $CMD   TBBD65 $SESSION $USER
  ;;
  'thursday-2')
    # 251
     echo "Ravello TFDD21"
     $CMD   TFDD21 $SESSION $USER
    # 252A
     echo "Ravello T625B0"
     $CMD   T625B0 $SESSION $USER
    # 252B
     echo "Ravello TC9818"
     $CMD   TC9818 $SESSION $USER
     # AWS TC9818 - SHARED predeploy 4/29/2019
    # 253A
     echo "Ravello T9655E"
     $CMD   T9655E $SESSION $USER
    # 253C
     echo "Ravello TD09CB"
     $CMD   TD09CB $SESSION $USER
    # 254A
     # AWS T047CF - SHARED INTG predeploy 5/8/2019
    # 254B
     echo "Ravello T3748C"
     $CMD   T3748C $SESSION $USER
  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances]"
    exit 1
  ;;
esac
