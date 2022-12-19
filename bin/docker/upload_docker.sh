#!/usr/bin/env bash

dockerpath=dinhdangkhoa0201/khoadd6-devops-capstone-project

echo "Docker ID and Image: $dockerpath"

docker login -u dinhdangkhoa0201
docker tag khoadd6-devops-capstone-project $dockerpath:latest

docker push $dockerpath:latest
