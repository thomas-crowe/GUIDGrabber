#!/bin/bash


/usr/local/bin/dsh -r ssh -ac -- "tail -f /var/www/miq/vmdb/log/automation.log"
