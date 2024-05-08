#!/bin/bash

echo "all variables:$@"
echo "number of variables:$#"
echo "Script name:$0"
echo "current working directory:$PWD"
echo "home directory of current user:$HOME"
echo "which user is running this script:$USER"
 echo "hostname:$HOSTNAME"
 echo "process ID of current shell-script:$$"
 sleep 60 &
 echo "process ID of last background command:$!"