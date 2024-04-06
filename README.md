# Setting Up Vault and AWS Infrastructure

This guide will walk you through the process of setting up HashiCorp Vault and provisioning AWS infrastructure using Terraform.

## Prerequisites

Before you begin, ensure you have the following prerequisites:
- [HashiCorp Vault](https://www.vaultproject.io/) installed and configured.
- [Terraform](https://www.terraform.io/) installed.
- An AWS account with appropriate permissions to create resources.

## Setup Vault
![Alt text](Picture1.png)

### 1. Install and Start Vault

Download and install Vault from the [official website](https://www.vaultproject.io/downloads). Once installed, start Vault in dev mode:
```bash

vault server -dev


### 2. Enable AWS Secrets Engine
![Alt text](Picture2.png)
Enable the AWS secrets engine in Vault:
vault secrets enable aws

