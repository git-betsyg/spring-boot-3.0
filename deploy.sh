#!/bin/sh

# step 1: download code from github
cd spring-boot-3.0

# step 2: build images
docker build --tag spring-boot-app:latest -f Dockerfile .
echo ">>>> build spring-boot-app image finished"

# step 3： 运行容器
docker compose down
docker compose up -d


