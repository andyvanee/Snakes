#!/bin/bash

sockfile="ls.sock"

source ../lib/makesock.sh
makesock $sockfile

while true; do
	ls -l /usr/bin | sed '1 i\
	Listing of /usr/bin:
	' > $sockfile
done
