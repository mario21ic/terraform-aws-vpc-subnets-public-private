variable "region" {
  description = "aws region"
}

variable "name" {
  description = "vpc name"
}
variable "vpc_cidr" {
  description = "cidr for the vpc"
}

variable "sn_public_1_cidr" {
  description = "cidr for subnet 1"
}
variable "sn_public_1_az" {
  description = "Subnet Availability Zone"
}

variable "sn_private_1_cidr" {
  description = "cidr for subnet 1"
}
variable "sn_private_1_az" {
  description = "Subnet Availability Zone"
}

variable "sn_public_2_cidr" {
  description = "cidr for subnet 2"
}
variable "sn_public_2_az" {
  description = "Subnet Availability Zone"
}

variable "sn_private_2_cidr" {
  description = "cidr for subnet 2"
}
variable "sn_private_2_az" {
  description = "Subnet Availability Zone"
}
