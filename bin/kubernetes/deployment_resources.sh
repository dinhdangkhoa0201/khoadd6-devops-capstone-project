#!/usr/bin/env bash

DEPLOYMENT_NAME=udacity-app
PORT=80
REPLICAS=4

dockerpath=dinhdangkhoa0201/khoadd6-udacity-project-capstone

kubectl create deployment ${DEPLOYMENT_NAME} --image=${dockerpath} --replicas=${REPLICAS}
kubectl expose deployment/${DEPLOYMENT_NAME} --type="LoadBalancer" --port ${PORT}

echo
echo "List deployments"
kubectl get deployments -o wide

echo
echo "List services"
kubectl get services -o wide

echo
echo "List pods"
kubectl get pods -o wide
