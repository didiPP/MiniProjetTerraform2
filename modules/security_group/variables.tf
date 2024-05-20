variable "name" {
  description = "Security group name"
  type        = string
  default     = "example-sg"
}

variable "description" {
  description = "Security group description"
  type        = string
  default     = "Security group for example EC2 instance"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = "vpc-12345678"
}
