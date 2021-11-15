#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="heyo38/predictapp"

# Step 2
# Run the Docker Hub container with kubernetes
cat ~/pass.txt |docker login -u heyo38 --password-stdin
kubectl run predictapp\
    --image=$dockerpath\
    --port=80 --labels app=predictapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward predictapp 8000:80

