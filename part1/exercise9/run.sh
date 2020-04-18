#!/bin/bash
docker run -d --rm -p 5000:80 devopsdockeruh/ports_exercise
sleep 1
curl localhost:5000