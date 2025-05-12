variable "name" {
  description = "AWS region to deploy to"
  type        = string
}


variable "region" {
  description = "AWS region to deploy to"
  type        = string
}

variable "availability_zone" {
  description = "AWS availability zone to deploy to"
  type        = string
}

variable "cidr_block" {
  description = "CIDR blocks for the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the subnet should be assigned a public IP address"
  type        = bool
}

variable "bucket" {
  description = "terraform state bucket"
  type        = string
}