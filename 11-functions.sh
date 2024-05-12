#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo -e "$2.....$R failure $N"
    exit 1
    else
    echo -e "$2.....$G success $N"
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

dnf install dockerr -y &>>$LOGFILE

VALIDATE $? "Install docker"