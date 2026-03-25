#!/bin/bash

# Simple port scanner using nc (Netcat) to check ports 1–1024 on a target IP

TARGET="10.0.0.5"   # Target IP

for port in {1..1024}; do   # Loop through ports
  if nc -zvw1 $TARGET $port 2>/dev/null; then   # Check port
    		echo "[OPEN]  Port $port"             # If port is open
  else
					echo "[CLOSED] Port $port"            # If closed
  fi
done

# Flags of Netcat used
  # -z : Zero-I/O mode (scan only, no data sent)
  # -v : Verbose output (shows success/failure)
  # -w1: Wait 1 second before timing out (faster scanning)
  # 2>/dev/null : Suppress error messages (clean output)