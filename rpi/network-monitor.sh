#!/bin/bash

while true ; do
   if ifconfig wlan0 | grep -q "inet addr:" ; then
      sleep 600
   else
      echo "Network connection down! Attempting reconnection."
      ifup --force wlan0
      sleep 60
   fi
done