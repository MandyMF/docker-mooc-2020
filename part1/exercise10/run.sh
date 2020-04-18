#!/bin/bash

# Remove old image if such happens to exist
docker rmi fe-example

# Build new image
docker build -t fe-example .

# Start image
docker run --rm -d -p 5000:5000 --name fe-example fe-example
