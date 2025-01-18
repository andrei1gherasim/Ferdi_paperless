#!/bin/bash

# Check if container name or ID is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <container_name_or_id>"
  exit 1
fi

container="$1"

# Check if the container is running
if [ "$(docker ps -q -f name=^/${container}$)" ]; then
  echo "Container '$container' is already running."
else
  echo "Container '$container' is not running."

  # Check if the container exists (but is stopped)
  if [ "$(docker ps -aq -f name=^/${container}$)" ]; then
    echo "Starting existing container '$container'..."
    docker start "$container"
  else
    echo "Container '$container' does not exist."
    # Optionally, create and start the container here
    # Example:
    # echo "Creating and starting container '$container'..."
    # docker run -d --name "$container" your_image_name
  fi
fi
