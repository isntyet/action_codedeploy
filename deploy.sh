#!/usr/bin/env bash

REPOSITORY=/opt/testapp
cd $REPOSITORY

JAR_NAME=$(ls $REPOSITORY/build/libs/ | grep '.jar' | tail -n 1)
JAR_PATH=$REPOSITORY/build/libs/$JAR_NAME

java -jar $JAR_PATH
