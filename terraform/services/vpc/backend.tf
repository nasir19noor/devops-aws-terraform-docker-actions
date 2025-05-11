terraform {
  backend "s3" {
    bucket = "devops-aws-terraform-docker-actions-terraform-state"
    region = "ap-southeast-1"
    key = "vpc/terraform.tfstate"
  }
}