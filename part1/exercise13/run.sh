#!/bin/bash

# Remove previous images
docker rmi spring_test

# Build new image
docker build -t spring_test .

# Start container
docker run -d -p 8080:8080 --name spring_test spring_test

# Wait a bit for server to start
sleep 10

# Check response w/ curl
curl -I localhost:8080

# Stop and remove container
docker rm --force spring_test