#!/bin/bash
docker rmi be-example
docker build -t be-example .
test -f logs.txt || touch logs.txt
docker run -d -p 8000:8000 -v $(pwd)/logs.txt:/usr/app/logs.txt --name be-example be-example
sleep 2
curl -v localhost:8000
sleep 1
cat logs.txt
docker stop be-example
docker start be-example
sleep 1
curl -v localhost:8000
sleep 1
cat logs.txt
echo "Exercise completed, stopping and removing container"
docker rm --force be-example