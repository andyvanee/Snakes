#!/bin/bash

sockfile="mysqlpage.sock"

source ../lib/makesock.sh
makesock $sockfile

source ../config/mysql.sh

while true; do
mysqlconnect -e "SELECT * FROM pages" > $sockfile
done
