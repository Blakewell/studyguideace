# Dev container for studyguideace with gcloud installed
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu

# avoid prompts
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl apt-transport-https ca-certificates gnupg lsb-release software-properties-common && \
    mkdir -p /usr/share/keyrings && \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" > /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | gpg --dearmor --yes -o /usr/share/keyrings/cloud.google.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" > /etc/apt/sources.list.d/hashicorp.list && \
    curl -fsSL https://apt.releases.hashicorp.com/gpg | gpg --dearmor --yes -o /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    apt-get update && \
    apt-get install -y google-cloud-sdk terraform && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Optionally include additional tooling for node/dev
RUN apt-get update && apt-get install -y git && apt-get clean && rm -rf /var/lib/apt/lists/*

# Set default shell
SHELL ["/bin/bash", "-lc"]
