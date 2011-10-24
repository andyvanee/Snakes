#!/bin/bash
sockfile="echo.sock"

source ../lib/makesock.sh
makesock $sockfile

while true; do

f=`cat $sockfile`
echo "$f" > $sockfile

done

