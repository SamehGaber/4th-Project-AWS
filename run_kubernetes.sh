#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="199420172020/test"
kub
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mypod -it --image=199420172020/test --port=80

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
#kubectl expose pod mypod --type=LoadBalancer --port=8000 --NodePort=8000 --target-port=80
#kubectl expose deplyoment 
kubectl port-forward pods/mypod 8000:80