#!/bin/bash

flag=$1

stop(){
  PID=`ps -eaf | grep stubby | grep -v grep | awk '{print $2}'`
  echo "killing $PID"
  if [ -n "$PID" ]; then
    kill -9 $PID
    echo "killed $PID"
  fi
}

start(){
  echo "Starting stubs..."
  stubby --admin 5558 --stubs 8187 --data ./stubs/endpoints.yml > log/stub.log
}

restart(){
  stop
  start
}

case $flag in
  start) start;;
  stop) stop;;
  restart) restart;;
  *) restart;;
esac
