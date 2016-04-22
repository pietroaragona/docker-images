FROM ubuntu:16.04
MAINTAINER Pietro Aragona <pietroaragona@gmail.com>

# Update Ubuntu
RUN apt-get update && apt-get -y upgrade \
  # Add oracle java 7 repository
    && apt-get -y install software-properties-common \
    && add-apt-repository ppa:webupd8team/java \
    && apt-get -y update \
  # Accept the Oracle Java license
    && echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections \
  # Install Oracle Java
    && apt-get -y install oracle-java7-installer && rm -rf /var/lib/apt/lists/*
