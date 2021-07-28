FROM ubuntu:20.04

LABEL org.opencontainers.image.authors="Pietro Aragona"


### common utils
RUN apt update && apt upgrade -y && apt install -y \
    curl \
    dos2unix

## install Docker and docker-compose
RUN apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - \
    && \
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" \
    && \
    apt-get update && apt-get upgrade -y && \
    apt-get install -y docker-ce docker-ce-cli containerd.io \
    && \
    curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# install Java and Maven
RUN apt install -y \
    openjdk-8-jdk \
    maven=3.6.3-1 && \
    rm -rf /var/lib/apt/lists/* && \
    update-alternatives --set java /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java
    #update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java
