#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="ninyhorlah6/flaskappml:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy flaskappml1 --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$(echo $(kubectl get pods) | awk -F ' ' '{print $6}') --address 0.0.0.0 8000:80

