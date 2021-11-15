#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="heyo38/predictapp"
# Step 2:  
# Authenticate & tag
docker login -u heyo38 -p Lolelephant!23
docker tag  predictapp:latest $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push heyo38/predictapp