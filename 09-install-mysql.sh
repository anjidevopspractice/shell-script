#!/bin/bash

ID=$(id-u)
TIMESTAMP=$( date +%F-%H-%M-%S)
LOGFILE="/temp/$0-$TIMESTAMP.log"

VALIDATE(){
    if [ $? -ne 0 ]
    then 
        echo "ERROR: $2....FAILD"
    else
        echo "SUCCESS: $2...SUCCESS"
    FI
}

if [ $ID -ne 0 ]
then
    echo "ERROR : please run the script with root access"
    exit 1
else
    echo "success: your root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing git"
