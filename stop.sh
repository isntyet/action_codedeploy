#!/usr/bin/env bash

APP_NAME=action_codedeploy

# 기존 app kill
kill -9 `ps -ef | grep ${APP_NAME} | grep -v 'grep' | awk '{print $2}'`

