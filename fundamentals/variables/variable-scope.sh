#!/bin/bash

# Demonstrates local vs global variable scope in Bash

STATUS="Idle"
JOB_ID=0

execute_job() {

    local STATUS="Running: $1"
    ((JOB_ID++))
    echo "Job Status: $STATUS"

}

execute_job "Database-Backup"

echo "Final Global Status: $STATUS"
echo "Total Jobs: $JOB_ID"
