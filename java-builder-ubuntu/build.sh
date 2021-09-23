#!/bin/bash
set -e

IMAGE_NAME="java-builder-ubuntu"
TAG="2.1"

docker build -t pietroaragona/$IMAGE_NAME:$TAG . #--no-cache

echo -e "\n\nTo push on docker Hub: \n\tdocker push pietroaragona/$IMAGE_NAME:$TAG\n"
