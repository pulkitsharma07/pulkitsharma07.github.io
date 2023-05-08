#! /bin/bash

docker build -t nginx . -f Dockerfile.rpi
docker run -d --restart=unless-stopped -p 9999:8080 -v /home/pulkit/Workspace/pulkitsharma07.github.io:/app nginx
