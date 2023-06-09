FROM ubuntu:22.04

LABEL org.opencontainers.image.authors="Pietro Aragona"

### common utils
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    dos2unix apt-utils \
    apt-transport-https \
    ca-certificates \
    curl \
    jq \
    gnupg gnupg-agent \
    software-properties-common \
    # install ansible
    && add-apt-repository --yes --update ppa:ansible/ansible \
    && apt-get install -y ansible \
#    # install hashicorp products \
    && curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - \
    && apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
    && apt-get update && apt-get install -y \
    packer \
    terraform \
    vault \
    # install trivy (security scanner https://github.com/aquasecurity/trivy )
    && apt-get install -y wget apt-transport-https gnupg lsb-release \
    && wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | apt-key add - \
    && echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | tee -a /etc/apt/sources.list.d/trivy.list \
    && apt-get update \
    && apt-get install -y trivy \
#    # install kubectl
    && apt-get update \
    && apt-get install -y apt-transport-https ca-certificates curl \
    && curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg \
    && echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | tee /etc/apt/sources.list.d/kubernetes.list \
    && apt-get update \
    && apt-get install -y kubectl \
#    # install Helm
    && curl https://baltocdn.com/helm/signing.asc | apt-key add - \
    && apt-get install -y apt-transport-https --yes \
    && echo "deb https://baltocdn.com/helm/stable/debian/ all main" | tee /etc/apt/sources.list.d/helm-stable-debian.list \
    && apt-get update \
    && apt-get install -y helm \
#    # install helm push plugin
    && apt-get install -y git && helm plugin install https://github.com/chartmuseum/helm-push.git \
#    #
    && rm -rf /var/lib/apt/lists/*