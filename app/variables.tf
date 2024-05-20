variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "ebs_size" {
  description = "Size of the EBS volume"
  type        = number
  default     = 8
}

variable "ebs_name" {
  description = "Name of the EBS volume"
  type        = string
  default     = "example-ebs-volume"
}

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
  description = "Instance name"
  type        = string
  default     = "example-ec2-instance"
}

variable "sg_name" {
  description = "Security group name"
  type        = string
  default     = "example-sg"
}

variable "sg_description" {
  description = "Security group description"
  type        = string
  default     = "Security group for example EC2 instance"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "vpc-12345678"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = "subnet-12345678"
}
