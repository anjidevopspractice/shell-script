#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 100 ]
then
    echo : "given number $NUMBER : is grater then 100"
else
    echo : "given number $NUMBER : is not grater then 100"
fi