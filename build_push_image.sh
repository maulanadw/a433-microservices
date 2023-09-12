#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 maulanadw/item-app:v1

# Login ke Docker Hub
docker login -u maulanadw

# Mengunggah image ke Docker Hub
docker push maulanadw/item-app:v1

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/maulanadw/a433-microservices/item-app:v1

# Login ke GitHub Packages
docker login -u maulanadw -p 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

# Mengunggah image ke GitHub Packages
docker push ghcr.io/maulanadw/a433-microservices/item-app:v1
