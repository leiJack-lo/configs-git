#!/bin/bash
PID=$(ps -ef | grep eureka.jar | grep -v grep | awk '{ print $2 }')
if [ -z "$PID" ]
then
    echo eureka.jar is already stopped
else
    echo kill $PID
    kill $PID
fi
