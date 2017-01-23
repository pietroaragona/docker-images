FROM ubuntu:16.04

MAINTAINER Pietro Aragona <pietroaragona@gmail.com>

RUN apt-get update && apt-get install -y \
  curl \
  dos2unix \
  git \
  youtube-dl \
  wget \
  &&  apt-get autoclean && apt-get autoremove && rm -rf /var/lib/apt/lists/*


# create same user of host machine
RUN useradd -ms /bin/bash pietro
USER pietro

WORKDIR /home/pietro
