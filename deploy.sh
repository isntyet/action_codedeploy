#!/usr/bin/env bash

REPOSITORY=/opt/testapp
cd $REPOSITORY


JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME

# 기존 app kill
PS_CMD=`ps -ef | grep 'java -jar $JAR_PATH' | grep -v 'grep' | awk '{print $2}'`
echo ${PS_CMD}
kill -9 ${PS_CMD}

ps -ef | grep 'java -jar $JAR_PATH' | grep -v 'grep' | awk '{print $2}'

java -jar $JAR_PATH
