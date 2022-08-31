#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="<sirphemmiey/project4>"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project4 --image=sirphemmiey/project4


# Step 3:
# List kubernetes pods
#kubectl get nodes
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward project4-6f66c6bd8d-2z96b 8000:80

