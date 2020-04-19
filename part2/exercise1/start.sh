#!/bin/bash

# Docker needs file to exists to mount it successfully
test -f logs.txt || touch logs.txt

# Docker-compose up
docker-compose up