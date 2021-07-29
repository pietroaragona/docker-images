FROM ubuntu:20.04

LABEL org.opencontainers.image.authors="Pietro Aragona"

### common utils
RUN apt update && apt upgrade -y && apt install -y \
    dos2unix apt-utils \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg gnupg-agent \
    software-properties-common \
    # install ansible
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt install -y ansible \
    # install terraform \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update && apt-get install -y \
    packer \
    terraform \
    vault \
    && rm -rf /var/lib/apt/lists/*