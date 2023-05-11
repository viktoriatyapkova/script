#!/bin/bash

i=$1
o=$2
d=$3

if [[ ! -f $i || ! -f $o ]] && [[ ! -n $d ]]
 then
  echo "Аргументы не были переданы или они не являются файлами"
  exit 1
fi
counter=0
for line in $(cat text)
do
    for word in $line
    do
        if [[ $word = $d ]]
        then
        counter=$((counter+1))
        break
    fi
    done
done
echo $counter >> $o
exit 0

