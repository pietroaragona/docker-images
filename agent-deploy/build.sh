#!/bin/bash
set -e

IMAGE_NAME="agent-deploy"
TAG="2.0.0"

docker build -t pietroaragona/$IMAGE_NAME:$TAG . # --no-cache

echo -e "\n\nTo push on docker Hub: \n\tdocker push pietroaragona/$IMAGE_NAME:$TAG\n"

echo -e "\nUbuntu version:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG cat /etc/os-release |grep VERSION=
echo -e "\nkubectl version: "
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG  kubectl version --client -o json |jq .clientVersion.gitVersion
echo -e "\nansible version:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG ansible --version |head -n1
echo -e "\nterraform version:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG terraform --version |head -n1
echo -e "\npacker  version:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG packer --version
echo -e "\nvault version:"
# vault non va
echo -e "\nHelm version:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG helm version --short
echo -e "\nHelm plugins:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG helm plugin list
echo -e "\ntrivy version:"
docker run --rm -it pietroaragona/$IMAGE_NAME:$TAG trivy --version
