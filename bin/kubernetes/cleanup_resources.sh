#!/usr/bin/env bash

DEPLOYMENT_NAME="udacity-app"

echo
echo "Deleting service: ${DEPLOYMENT_NAME}"
kubectl delete services ${DEPLOYMENT_NAME}

echo
echo "Deleting deployment: ${DEPLOYMENT_NAME}"
kubectl delete deployments ${DEPLOYMENT_NAME}

echo
echo "List services"
kubectl get services

echo
echo "List deployments"
kubectl get deployments

echo
echo "List pods"
kubectl get pods
