#!/bin/bash
set -e

IMAGE_NAME="agent-deploy"
TAG="1.0"

docker build -t pietroaragona/$IMAGE_NAME:$TAG .

echo -e "\n\nTo push on docker Hub: \n\tdocker push pietroaragona/$IMAGE_NAME:$TAG\n"
