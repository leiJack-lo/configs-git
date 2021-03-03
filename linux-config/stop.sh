#!/bin/bash
appname="test-service.jar"
PID=$(ps -ef | grep ${appname} | grep -v grep | awk '{ print $2 }')
if [ -z "$PID" ]
then
    echo ${appname} is already stopped
else
    echo kill $PID
    kill $PID
fi
