#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
echo "run this script with root access"
exit 1 
else 
echo "you r super user"
fi

for i in $@
do 

echo "package to install:$i"
dnf list installed $i &>>$LOGFILE

done