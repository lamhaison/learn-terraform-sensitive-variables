# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.30.0.0/16"
}

variable "public_subnet_cidr_blocks" {
  description = "Available cidr blocks for public subnets"
  type        = list(string)
  default = [
    "10.30.1.0/24",
    "10.30.2.0/24",
    "10.30.3.0/24",
    "10.30.4.0/24",
    "10.30.5.0/24",
    "10.30.6.0/24",
    "10.30.7.0/24",
    "10.30.8.0/24"
  ]
}

variable "private_subnet_cidr_blocks" {
  description = "Available cidr blocks for private subnets"
  type        = list(string)
  default = [
    "10.30.101.0/24",
    "10.30.102.0/24",
    "10.30.103.0/24",
    "10.30.104.0/24",
    "10.30.105.0/24",
    "10.30.106.0/24",
    "10.30.107.0/24",
    "10.30.108.0/24"
  ]
}

variable "instances_per_subnet" {
  description = "Number of EC2 instances per private subnet"
  type        = number
  default     = 1
}

variable "instance_type" {
  description = "Instance type for EC2 instances"
  type        = string
  default     = "t2.micro"
}


# Reference: 

variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}
