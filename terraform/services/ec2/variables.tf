variable "region" {
  description = "AWS region to deploy to"
  type        = string
}

variable "name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "bucket" {
  description = "S3 bucket name for terraform state"
  type        = string
}

variable "ami" {
  description = "Amazon Machine Image ID"
  type    = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type    = string
}

variable "availability_zone" {
  description = "EC2 instance availability zone"
  type    = string
}

variable "root_volume_size" {
  description = "root volume size in GB"
  type    = number
}

variable "root_volume_type" {
  description = "root volume type"
  type    = string
}

variable "root_volume_delete_on_termination" {
  description = "root volume delete on termination"
  type    = bool
}

variable "root_volume_encrypted" {
  description = "root volume encrypted"
  type    = bool
}