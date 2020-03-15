#!/usr/bin/env bash

REPOSITORY=/opt/testapp
cd $REPOSITORY


JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME


sudo kill -9 `ps -ef | grep 'java -jar $JAR_PATH' | grep -v 'grep' | awk '{print $2}'`

ps -ef | grep 'java -jar $JAR_PATH' | grep -v 'grep' | awk '{print $2}'

nohup java -jar $JAR_PATH >> /opt/run.log &
