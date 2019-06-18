#!/bin/bash

INSTANCES=1

./deploy-instances-ravello.sh tuesday-1 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh tuesday-2 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh wednesday-1 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh wednesday-2 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh wednesday-3 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh thursday-1 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh thursday-2 $INSTANCES generic_ravello_loadtest
./deploy-instances-ravello.sh thursday-3 $INSTANCES generic_ravello_loadtest
