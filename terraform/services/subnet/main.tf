resource "aws_subnet" "subnet1" {
  vpc_id            = data.terraform_remote_state.vpc.outputs.vpc_id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags =  {
    Name = "subnet-1"
    Environment = "dev"
  }
  
}