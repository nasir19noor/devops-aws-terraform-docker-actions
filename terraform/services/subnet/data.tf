data "terraform_remote_state" "vpc" {
  backend = "s3" 
  config = {
    bucket = var.bucket
    key = "vpc/terraform.tfstate" 
    region = var.region
  }
}
