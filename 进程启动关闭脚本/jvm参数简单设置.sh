#!/bin/bash
JAR_NAME=xxxx.jar
rm -f nohup.out
if pgrep -f $JAR_NAME > /dev/null; then
echo "test.jar is running, killing process..."
pkill -9 -f $JAR_NAME
fi
sleep 3
echo "Starting $JAR_NAME..."
nohup java -Xmx72g -Xms72g -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=/root/NLP/J_code/dump/heapdump.log  -XX:ErrorFile=/data/logs/gc/hs_err_%p.log   -jar $JAR_NAME &
echo "Process PID: $!"