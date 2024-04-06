provider "aws" {
  region = var.aws_region
}

provider "vault" {
  address = var.vault_address
}

data "vault_generic_secret" "aws_credentials" {
  path = var.vault_aws_secret_path
}

resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"  
}


resource "aws_subnet" "example_subnet" {
  vpc_id            = aws_vpc.example_vpc.id
  cidr_block        = "10.0.1.0/24"  
  availability_zone = "us-east-1a"   
}

resource "aws_instance" "example_instance" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.example_subnet.id
  key_name               = var.key_name
  user_data = file("userdata.sh")
}


  

