#!/bin/bash

USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "$2 failure...."
    else
    echo "sucess....."
    fi
}

if [ $USERID -ne 0 ]
then 
echo "please run this script with root access"
exit 1 
else
echo "you are super user"
fi

dnf install mysql -y

VALIDATE $? "Install Mysql"

dnf install git -y

VALIDATE $? "Install git"