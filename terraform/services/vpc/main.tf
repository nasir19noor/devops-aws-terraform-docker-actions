resource "aws_vpc" "this" {
  cidr_block                           = var.cidr
  instance_tenancy                     = var.instance_tenancy
  enable_dns_hostnames                 = var.enable_dns_hostnames
  enable_dns_support                   = var.enable_dns_support

  tags = {
    Name = var.name
  }
}