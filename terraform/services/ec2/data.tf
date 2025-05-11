data "terraform_remote_state" "vpc" {
  backend = "s3" 
  config = {
    bucket = var.bucket
    key = "vpc/terraform.tfstate" 
    region = var.region
  }
}

data "terraform_remote_state" "subnet" {
  backend = "s3" 
  config = {
    bucket = var.bucket
    key = "subnet1/terraform.tfstate" 
    region = var.region
  }
}
