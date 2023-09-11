#!/bin/bash
JAR_NAME=xxx.jar
if pgrep -f $JAR_NAME > /dev/null; then
echo "test.jar is running, killing process..."
pkill -f $JAR_NAME
fi
echo "Starting $JAR_NAME..."
nohup java -jar $JAR_NAME &
echo "Process PID: $!"