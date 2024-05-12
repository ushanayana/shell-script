#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo "$2.....failure"
    exit 1
    else
    echo "$2.....success"
    fi
}

if [ $USERID -ne 0 ]
then 
echo "please run this script with root access"
exit 1 
else
echo "you are super user"
fi

dnf install mysql -y &>>$LOGFILE

VALIDATE $? "Install Mysql"

dnf install git -y &>>$LOGFILE

VALIDATE $? "Install git"