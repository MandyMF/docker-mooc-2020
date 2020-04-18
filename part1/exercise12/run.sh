#!/bin/bash

# Remove previous images
docker rmi ex12_fe
docker rmi ex12_be

# Build new images
docker build -t ex12_fe -f Dockerfile_fe .
docker build -t ex12_be -f Dockerfile_be .

# Check if needs to create logs.txt file
test -f logs.txt || touch logs.txt

# Start backend
docker run -d -p 8000:8000 -v $(pwd)/logs.txt:/usr/app/logs.txt -e "FRONT_URL=http://localhost:5000" --name ex12_be ex12_be

# Start frontend
docker run -d -p 5000:5000 -e "API_URL=http://localhost:8000" --name ex12_fe ex12_fe