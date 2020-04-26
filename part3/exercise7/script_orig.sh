#!/bin/bash

echo "Input website:"
read website
echo "Downloading package information"
apt-get update > /dev/null
echo "Installing curl"
apt-get install -y curl > /dev/null
"Searching $website"
curl http://$website