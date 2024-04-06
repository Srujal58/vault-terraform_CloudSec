variable "aws_region" {
  description = "The AWS region where resources will be provisioned (e.g., us-east-1)"
  default     = "us-east-1"
}

variable "vault_address" {
  description = "The address of the Vault server"
  default =   "http://127.0.0.1:8200"
}

variable "vault_aws_secret_path" {
  description = "The path in Vault where AWS secrets are stored"
  default = "aws/creds/my-role"
}

variable "ami_id" {
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance"
  default = "ami-0c41531b8d18cc72b"
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default = "t2.micro"
}

variable "key_name" {
  description = "The name of the SSH key pair to use for accessing the EC2 instance"
  default = "cloudsecurity"
}
