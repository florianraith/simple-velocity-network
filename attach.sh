#!/bin/bash

# The problem with the `docker attach` is that once the container restarts
# you will be automatically detached from the container.

# With this script you can automatically re-attach to the container when it restarts.

# To stop this script you have to first detach from the container by pressing
# Ctrl + P, Ctrl + Q and then you can stop the script by pressing Ctrl + C.

# Note: Pressing Ctrl + C while attached to the container will
#       stop the container, thus restarting the server.

CONTAINER_NAME="mc-main"

while true; do
    if docker ps | grep -q $CONTAINER_NAME; then
        echo "Attaching to $CONTAINER_NAME..."
        docker attach $CONTAINER_NAME
        echo "Detached from $CONTAINER_NAME."
    else
        echo "Container $CONTAINER_NAME is not running. Checking again in 3 seconds..."
    fi
    sleep 3
done