#!/bin/bash

# List of allowed services
services=("nginx" "mysql" "ssh")

# Prompt user for service name
echo "Enter the service name to verify:"
read servicename

# Initialize flag
found=false

# Check if service exists in predefined list
for service in "${services[@]}"; do
  if [[ "$servicename" == "$service" ]]; then
    echo "SUCCESS: Service '$servicename' is recognized and allowed." > /home/user/service_check.txt
    found=true
    break
  fi
done

# Handle invalid service
if [[ "$found" == false ]]; then
  echo "ERROR: Service '$servicename' is not recognized." > /home/user/service_check.txt
fi
