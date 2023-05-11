#!/bin/bash
script=$1
chmod +x $script
./$script > /dev/null
a=`echo $?`
if [[ $a -eq 1 ]] 
then
    echo "Тест пройден"
else
    echo "Тест провален"
    exit 1
fi 

echo "Новый тест"
./$script text result эскимо > /dev/null
b=`cat result`
if [[ $b -eq 1 ]]
then 
    echo "Тест пройден"
else
    echo "Тест провален"
    exit 1
fi
