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
     LCS="OCP1 AMM1"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'tuesday-2')
     LCS="AI02"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-1')
     LCS="OCP5"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-2')
     LCS="CN01 OCP6"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'wednesday-3')
     LCS="OCP2_R"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-1')
       echo "Nothing to do"

  ;;
  'thursday-2')
     LCS="AN04 CN01_R"
     for LC in $LCS
     do
       echo "Getting Guids for $LC"
       $CMD $LC $SESSION $USER
     done

  ;;
  'thursday-3')
       echo "Nothing to do"

  ;;
  *)
    echo "Usage: $0 <day=tuesday-{1,2}|wednesday-{1,2,3}|thursday-{1,2,3}>"
    exit 1
  ;;
esac
