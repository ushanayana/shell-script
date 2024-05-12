#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
echo "run this script with root access" 
else 
echo "you r super user"
fi