#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/maulanadw/a433-microservices/item-app:v1

# Login ke GitHub Packages
echo $GITHUB_TOKEN | docker login ghcr.io -u maulanadw --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/maulanadw/a433-microservices/item-app:v1
