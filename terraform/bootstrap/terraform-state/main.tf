resource "aws_s3_bucket" "terraform_state" {
  bucket        = "devops-aws-terraform-docker-actions-terraform-state"

  force_destroy       = true
  object_lock_enabled = false
}