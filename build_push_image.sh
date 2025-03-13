#!/bin/bash
# Build Docker image
docker build -t item-app:v1 .
# Melihat daftar image di lokal
docker images
# Mengubah nama image agar sesuai format Docker Hub
docker tag item-app:v1 livay2208/item-app:v1
# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u livay2208 --password-stdin
# Push image ke Docker Hub
docker push livay2208/item-app:v1
