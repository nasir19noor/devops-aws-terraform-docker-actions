variable "region" {
  description = "AWS region to deploy to"
  type        = string
}

variable "bucket" {
  description = "terraform state bucket"
  type        = string
}