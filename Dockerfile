FROM hashicorp/terraform:1.2.7

## Install packages
RUN apk add --no-cache \
    ansible \
    bash \
    make \
    postgresql

## Install Terragrunt
ARG TERRAGRUNT_VERSION=0.38.7
RUN wget "https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64" -O /usr/local/bin/terragrunt --no-verbose \
    && chmod +x /usr/local/bin/terragrunt

## remove WORKDIR and ENTRYPOINT FROM base image
WORKDIR /
ENTRYPOINT []
