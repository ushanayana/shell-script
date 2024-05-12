#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
echo "run this script with root access"
exit 1 
else 
echo "you r super user"
fi

echo "all packages:$@"