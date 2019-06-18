#!/bin/bash

if [ -z "$1" -o -z "$2" ]
then
  echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}> <user>"
  exit 1
fi
SESSION=$1
USER=$2

CMD="/root/provision/emeapc2019/retire-session.sh"
case $SESSION in
  'tuesday-1')
     LCS="RH01 AMM1"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'tuesday-2')
     LCS="RH04 RH07 AI02 RH02_R"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-1')
     LCS="RH05 AN01 OCP5"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-2')
     LCS="CN01 RH01_R OCP6 AN02"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-3')
     LCS="OCP1 RH02 OCP2_R AN03"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-1')
     LCS="OCP2 AN02_R RH06"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-2')
     LCS="AN04 AN06 CN01_R"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-3')
     LCS="AN07 AMM3 RH07_R SAP1"
     for LC in $LCS
     do
       echo "Retire $LC"
       $CMD $LC $SESSION $USER
     done
  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}>"
    exit 1
  ;;
esac
