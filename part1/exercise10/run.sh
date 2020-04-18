#!/bin/bash
docker build -t fe-example .
docker run --rm -d -p 5000:5000 --name fe-example fe-example
sleep 2;
curl -v localhost:5000
echo "Exercise completed, stopping and removing container"
docker rm --force fe-example