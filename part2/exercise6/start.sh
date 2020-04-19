#!/bin/bash

# Check if needs to create logs.txt file
test -f logs.txt || touch logs.txt

# Start docker-compose detached
docker-compose up -d