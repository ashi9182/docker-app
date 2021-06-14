#!/bin/bash
echo "Building docker image"
docker build --tag python-docker2 .
echo "Docker images"
docker images
echo "Running docker container"
docker run -d -p 5000:5000 python-docker2
echo "View docker containers"
docker ps
echo "Starting Nginx server"
sudo systemctl start nginx
echo "Complete"

