variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  sensitive = true
}

variable "availability_zone" {
  description = "AWS Avalibility Zone"
  type        = string
  sensitive = true
}

variable "aws_access_key" {
  description = "AWS Secrete key"
  type = string
  ephemeral = true
  sensitive = true
}


variable "aws_secret_key" {
  description = "AWS Secrete access key"
  type = string
  ephemeral = true
  sensitive = true
}