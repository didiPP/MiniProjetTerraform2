variable "ami" {
  description = "AMI ID"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Instance name tag"
  type        = string
  default     = "example-ec2-instance"
}

variable "ebs_size" {
  description = "Size of the EBS volume"
  type        = number
  default     = 8
}

variable "network_interface_id" {
  description = "Network interface ID"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
