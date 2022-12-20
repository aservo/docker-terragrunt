FROM hashicorp/terraform:1.3.6

## Install packages
RUN apk add --no-cache \
    ansible \
    bash \
    cargo \
    gcc \
    libffi-dev \
    make \
    musl-dev \
    openssl-dev \
    postgresql \
    py3-pip \
    python3-dev

ARG AZ_VERSION=2.42.0
RUN pip install --upgrade pip \
    && pip install -Iv azure-cli==${AZ_VERSION}

## Install Terragrunt
ARG TERRAGRUNT_VERSION=0.42.5
RUN wget "https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64" -O /usr/local/bin/terragrunt --no-verbose \
    && chmod +x /usr/local/bin/terragrunt

## remove WORKDIR and ENTRYPOINT FROM base image
WORKDIR /
ENTRYPOINT []
