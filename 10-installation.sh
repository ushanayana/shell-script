#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
echo "please run this script with root access"
exit 1 
else
echo "you are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo "installation of mysql failure....."
exit 1
echo "installation of mysql is success..."
fi

dnf install git -y

if [ $? -ne 0 ]
then
echo "installation of is failure,,,,"
else
echo "installation of git is sucess...."
fi
echo "please proceeding?.."