#!/bin/bash

# Transaction Audit Log Script
# Generates a structured audit log entry

SERVER_NAME="prod-db-01"
TRANSACTION_FEE='$0.05'

AUDIT_ENTRY="[$(date)] User: $(whoami) | Server: ${SERVER_NAME} | Fee: ${TRANSACTION_FEE}"

echo "$AUDIT_ENTRY"
