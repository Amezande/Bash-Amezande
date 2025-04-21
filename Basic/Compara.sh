#!/bin/bash

echo "Ingresa 1: "
read n1
echo "Ingresa 2: "
read n2

if [ $n1 -lt $n2 ]
  then
   echo " $n2 Es mayor"
elif [ $n1 -gt $n2 ]
  then
   echo " $n1 Es mayor"
elif [ $n1 -eq $n2 ]
  then
   echo " $n1 Es igual a $n2"
fi
