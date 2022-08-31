#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="<sirphemmiey/project4>"

# Step 2:  
# Authenticate & tag
#docker login -u="sirphemmiey" -p="Algorithm212..." docker.io
docker login -u="sirphemmiey" docker.io
docker tag project4 sirphemmiey/project4

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push sirphemmiey/project4
