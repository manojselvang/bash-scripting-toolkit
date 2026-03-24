#!/bin/bash

TARGET="192.168.1.10"   # Target IP

for port in {1..1024}   # Loop through ports
do
  if nc -zvw1 $TARGET $port 2>/dev/null   # Check port
  then
    echo "[OPEN]  Port $port"             # If open
  else
    echo "[CLOSED] Port $port"            # If closed
  fi
done