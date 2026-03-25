#!/bin/bash

SERVICE="nginx"

status=$(systemctl is-active $SERVICE)

if [ "$status" != "active" ]; then
    echo "$SERVICE is not running. Starting it now..."
    sudo systemctl restart $SERVICE
else
    echo "$SERVICE is already running."
fi
