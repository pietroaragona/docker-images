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
    # install terraform products \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update && apt-get install -y \
    packer \
    terraform \
    vault \
    # install trivy (security scanner https://github.com/aquasecurity/trivy )
    && apt install -y wget apt-transport-https gnupg lsb-release \
    && wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | apt-key add - \
    && echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | tee -a /etc/apt/sources.list.d/trivy.list \
    && apt update \
    && apt install trivy
    # install Helm
    RUN curl https://baltocdn.com/helm/signing.asc | apt-key add - \
    && apt-get install apt-transport-https --yes \
    && echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list \
    && apt-get update \
    && apt-get install helm \
    #
    && rm -rf /var/lib/apt/lists/*