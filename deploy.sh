#!/usr/bin/env bash

REPOSITORY=/opt/testapp
cd $REPOSITORY

APP_NAME=action_codedeploy
JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME

# 기존 app kill
kill -9 `ps -ef | grep ${APP_NAME} | grep -v 'grep' | awk '{print $2}'`

java -jar $JAR_PATH
