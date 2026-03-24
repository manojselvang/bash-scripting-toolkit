#!/bin/bash

# Simple port scanner using nc to check ports 1–1024 on a target IP

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

Use netcat (nc) to check if the port is open
  # -z : Zero-I/O mode (scan only, no data sent)
  # -v : Verbose output (shows success/failure)
  # -w1: Wait 1 second before timing out (faster scanning)
  # 2>/dev/null : Suppress error messages (clean output)