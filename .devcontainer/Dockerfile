# Dev container for studyguideace with gcloud installed
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl apt-transport-https ca-certificates gnupg lsb-release software-properties-common unzip && \
    mkdir -p /usr/share/keyrings && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor --yes -o /usr/share/keyrings/cloud.google.gpg && \
    apt-get update && \
    apt-get install -y google-cloud-sdk && \
    curl -fsSL "https://releases.hashicorp.com/terraform/1.6.0/terraform_1.6.0_linux_amd64.zip" -o /tmp/terraform.zip && \
    unzip /tmp/terraform.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/terraform && \
    rm -rf /tmp/terraform.zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Optionally include additional tooling for node/dev
RUN apt-get update && apt-get install -y git && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set default shell
SHELL ["/bin/bash", "-lc"]
