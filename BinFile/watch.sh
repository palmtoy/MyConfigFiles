#!/bin/bash
# usage: watch.sh <your_command>

while :; 
  do 
  clear
  date
  $1
  sleep 3
done

