Terragrunt
==========

## Binaries

This Docker image contains the following primary binaries:

* `terraform`
* `terragrunt`

## Example:

```
on:
  push:
    branches: [ main ]

jobs:
  terragrunt:
    runs-on: ubuntu-20.04
    container:
      image: ghcr.io/aservo/terragrunt:latest
    steps:
    - name: Versions
      run: | 
        terraform version
        terragrunt version
```
