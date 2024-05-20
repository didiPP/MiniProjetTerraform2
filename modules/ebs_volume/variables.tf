variable "availability_zone" {
  description = "Availability zone"
  type        = string
  default     = "us-east-1a"
}

variable "size" {
  description = "Size of the EBS volume"
  type        = number
  default     = 8
}

variable "name" {
  description = "Name tag for the EBS volume"
  type        = string
  default     = "example-ebs-volume"
}
