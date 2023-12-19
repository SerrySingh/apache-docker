#!/bin/bash

# Set variables
PORT_NUMBER=1000
DOCKER_IMAGE_NAME="apacheimage"

# Navigate to the httpd-docker directory
cd httpd-docker

# List the contents of the directory
ls

# Check if a container is running on the specified port
if docker ps -q -f "publish=${PORT_NUMBER}" &> /dev/null; then
    # If a container is running, stop and remove it
    docker stop $(docker ps -q -f "publish=${PORT_NUMBER}")
    docker rm $(docker ps -aq -f "publish=${PORT_NUMBER}")
    echo "Existing container stopped and removed"
fi

# Build the Docker image with the specified name
docker build -t ${DOCKER_IMAGE_NAME} .

# Run the Docker container if not already running
if ! docker ps -q -f "publish=${PORT_NUMBER}" &> /dev/null; then
    docker run -d -p ${PORT_NUMBER}:80 ${DOCKER_IMAGE_NAME}
    echo "Docker container started on port ${PORT_NUMBER} with image ${DOCKER_IMAGE_NAME}"
else
    echo "Docker container is already running on port ${PORT_NUMBER} with image ${DOCKER_IMAGE_NAME}"
fi

echo "Done"
