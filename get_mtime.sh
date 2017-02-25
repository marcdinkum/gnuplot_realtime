#! /bin/bash

#
# Marc Groenewegen 2017
#

FILE=$1

echo `stat $FILE | grep -i modify | awk 'BEGIN {FS=" "} {print $3}' | awk 'BEGIN {FS=":"} {print $3}'`

