#!/bin/bash

# Define which service we want to fix
SERVICE="nginx"

echo "Attempting to restart $SERVICE..."

# Restart the service
sudo systemctl restart $SERVICE

# Check if service is active
sudo systemctl is-active --quiet $SERVICE

# Verify result
if [ $? -eq 0 ]; then
    echo "Success: $SERVICE is now running."
else
    echo "Failure: $SERVICE could not start. Check system logs."
fi
