variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"  
}

variable "subnet_availability_zone" {
  description = "Availability zone for the subnet"
  default     = "us-east-1a"  
}
