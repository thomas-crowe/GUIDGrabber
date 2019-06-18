#!/bin/bash

if [ -z "$1" -o -z "$2" ]
then
  echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}> <user>"
  exit 1
fi
SESSION=$1
USER=$2

CMD="/root/provision/emeapc2019/get-guids-specific.sh"
case $SESSION in
  'tuesday-1')
     LCS="RH01"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'tuesday-2')
     LCS="RH04 RH07 RH02_R"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-1')
     LCS="RH05 AN01"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-2')
     LCS="RH01_R AN02"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-3')
     LCS="RH02 OCP2_R AN03"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-1')
     LCS="OCP2 AN02_R RH06"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-2')
     LCS="AN06 SAP1"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-3')
     LCS="AN07 AMM3 RH07_R"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done
  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}>"
    exit 1
  ;;
esac
