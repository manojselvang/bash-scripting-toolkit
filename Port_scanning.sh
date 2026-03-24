#!/bin/bash

TARGET="192.168.1.10"

for port in {1..1024}
do
  if nc -zvw1 $TARGET $port 2>/dev/null
  then
    echo "[OPEN]  Port $port"
  else
    echo "[CLOSED] Port $port"
  fi
done