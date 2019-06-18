#!/bin/bash

if [ -z "$1" ]
then
  echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}>"
  exit 1
fi
SESSION=$1

CMD="/root/provision/summit2019/get-guids-specific.sh"
case $SESSION in
  'test-session1')
     echo "Ravello TC9818"
     #$CMD  TC9818 $SESSION primary
  ;;
  'test-session2')
     echo "Ravello TC9818"
     $CMD  TC9818 $SESSION primary
  ;;
  'tuesday-1')
    # 251
     echo "Ravello TC9818"
     #$CMD   TC9818 $SESSION primary
     # AWS TC9818 - SHARED predeploy 4/29/2019
     $CMD   TC9818-AD $SESSION none
    # 252A
     #echo "AWS TE5CC2"
     $CMD   TE5CC2 $SESSION none
    # 252B
     echo "Ravello T77BC4"
     #$CMD   T77BC4 $SESSION primary
    # 253A
     #echo "AWS T82ACD"
     $CMD   T82ACD $SESSION none
    # 253C
     echo "Ravello TA3036"
     #$CMD   TA3036 $SESSION primary
    # 254A
     echo "Ravello TE9D49"
     #$CMD   TE9D49 $SESSION primary
    # 254B
     # BYO TA1C72
  ;;
  'tuesday-2')
    # 251
     echo "Ravello T625B0"
     $CMD   T625B0 $SESSION primary
    # 252A
     echo "Ravello TFDD21"
     $CMD   TFDD21 $SESSION primary
    # 252B
     # BYO T1CEE7
    # 253A
     echo "Ravello T9655E"
     $CMD   T9655E $SESSION primary
    # 253C
     echo "Ravello T617BF"
     $CMD   T617BF $SESSION primary
    # 254A
     #echo "Ravello T7AE23"
     $CMD   T7AE23 $SESSION primary
    # 254B
     echo "Ravello TA39DD"
     $CMD   TA39DD $SESSION primary
  ;;
  'tuesday-3')
    # 251
     echo "Ravello T19FE8"
     $CMD   T19FE8 $SESSION primary
    # 252A
     # AWS TD6D8A SHARED INTG predeploy 5/2/2019
     $CMD TD6D8A $SESSION none
    # 252B
     # BYO T99D20
    # 253A
     echo "Ravello T1C7B2"
     $CMD   T1C7B2 $SESSION primary
    # 253C
     # BYO TDAF10
    # 254A
     echo "Ravello T352DF"
     $CMD   T352DF $SESSION primary
    # 254B
     echo "Ravello T9655E"
     $CMD   T9655E $SESSION primary
  ;;
  'wednesday-1')
    # 251
     #echo "AWS T75E09"
     $CMD   T75E09 $SESSION none
    # 252A
     echo "Ravello T9A495"
     $CMD   T9A495 $SESSION primary
    # 252B
     # BYO T63F12
    # 253A
     # BYO T0E929
    # 253C
     echo "Ravello TE9D49"
     $CMD   TE9D49 $SESSION primary
    # 254A
     # AWS T554C3 SHARED Predeploy 5/5 or 5/6
     $CMD   T554C3 $SESSION none
    # 254B
     echo "Ravello T39E04"
     $CMD   T39E04 $SESSION primary
  ;;
  'wednesday-2')
    # 251
     echo "Ravello TFDD21"
     $CMD   TFDD21 $SESSION primary
    # 252A
     echo "Ravello T168C8"
     $CMD   T168C8 $SESSION primary
    # 252B
     echo "Ravello T625B0"
     $CMD   T625B0 $SESSION primary
    # 253A
     echo "Ravello TE9D49"
     $CMD   TE9D49 $SESSION primary
    # 253C
     echo "Ravello T93F1B"
     $CMD   T93F1B $SESSION primary
    # 254A
     #echo "AWS TEB93D"
     $CMD   TEB93D $SESSION none
    # 254B
     echo "Ravello T1C7B2"
     $CMD   T1C7B2 $SESSION primary
  ;;
  'wednesday-3')
    # 251
     # AWS TE050E SHARED INTG Predeploy 5/6
     $CMD   TE050E $SESSION none
    # 252A
     # AWS T9FDEB SHARED Predeploy 5/6
     $CMD   T9FDEB $SESSION none
    # 252B
     # BYO
    # 253A
     echo "Ravello T6D1D5"
     $CMD   T6D1D5 $SESSION primary
    # 253C
     echo "Ravello T617BF"
     $CMD   T617BF $SESSION primary
    # 254A
     #echo "AWS T9FA81"
     $CMD   T9FA81 $SESSION none
    # 254B
     echo "Ravello T73EEE"
     $CMD   T73EEE $SESSION primary
  ;;
  'thursday-1')
    # 251
     echo "Ravello T02098"
     $CMD   T02098 $SESSION none
    # 252A
     echo "Ravello TC9818"
     $CMD   TC9818 $SESSION none
     # AWS TC9818 - SHARED predeploy 4/29/2019
     $CMD   TC9818-AD $SESSION none
    # 252B
     echo "Ravello T1C7B2"
     $CMD   T1C7B2 $SESSION none
    # 253A
     # AWS T48CED - SHARED predeploy 5/8/2019
     $CMD   T48CED $SESSION none
    # 253C
     # BYO TAE877
    # 254A
     # BYO T63F12
    # 254B
     echo "Ravello TBBD65"
     $CMD   TBBD65 $SESSION none
  ;;
  'thursday-2')
    # 251
     echo "Ravello TFDD21"
     $CMD   TFDD21 $SESSION none
    # 252A
     echo "Ravello T625B0"
     $CMD   T625B0 $SESSION none
    # 252B
     echo "Ravello TC9818"
     $CMD   TC9818 $SESSION none
     # AWS TC9818 - SHARED predeploy 4/29/2019
     $CMD   TC9818-AD $SESSION none
    # 253A
     echo "Ravello T9655E"
     $CMD   T9655E $SESSION none
    # 253C
     echo "Ravello TD09CB"
     $CMD   TD09CB $SESSION none
    # 254A
     # AWS T047CF - SHARED INTG predeploy 5/8/2019
     $CMD   T047CF $SESSION none
    # 254B
     echo "Ravello T3748C"
     $CMD   T3748C $SESSION none
  ;;
  'thursday-3')
     $CMD   T625B0 $SESSION none
     $CMD   T82ACD $SESSION none
     $CMD   T9655E $SESSION none
     $CMD   TA39DD $SESSION none
     $CMD   TC9818 $SESSION none
     $CMD   TC9818-AD $SESSION none
     $CMD   TD6D8A $SESSION none
     $CMD   TE5CC2 $SESSION none
     $CMD   TE9D49 $SESSION none
  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2,3}|wednesday-{1,2,3}|thursday-{1,2}> [instances]"
    exit 1
  ;;
esac
