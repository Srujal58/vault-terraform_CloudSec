provider "aws" {
  region = var.aws_region
}

provider "vault" {
  address = var.vault_address
}

data "vault_generic_secret" "aws_credentials" {
  path = var.vault_aws_secret_path
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


module "vpc" {
  source = "./vpc"
}


module "subnet" {
  source = "./subnet"
  vpc_id = module.vpc.vpc_id
}

resource "aws_instance" "example_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.subnet.subnet_id
  key_name      = var.key_name
  user_data     = file("userdata.sh")
}
