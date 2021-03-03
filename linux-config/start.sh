#!/bin/bash
appname="test-service.jar"
JAVA_OPTS="\
-server \
-Xmx512m \
-Xms512m \
-Xmn256m \
-XX:SurvivorRatio=8 \
-XX:MetaspaceSize=256m \
-XX:MaxMetaspaceSize=256m \
-XX:+UseParallelGC \
-XX:ParallelGCThreads=4 \
-XX:+UseParallelOldGC \
-XX:+UseAdaptiveSizePolicy \
-XX:+PrintGCDetails \
-XX:+PrintGCTimeStamps \
-Xloggc:gc.log"
echo Starting ${appname} 
java ${JAVA_OPTS} -jar ${appname} &
