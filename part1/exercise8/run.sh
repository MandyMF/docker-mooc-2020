#!/bin/bash

# Test if file exists, create if doesn't as Docker will otherwise create a directory
test -f logs.txt || touch logs.txt

# Run container
docker run --rm -d -v $(pwd)/logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise