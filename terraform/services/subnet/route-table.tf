resource "aws_route_table" "public" {
 vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
 
 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = data.terraform_remote_state.vpc.outputs.igw_id
 }
 
 tags = {
   Name = "public-route-table"
 }
}

resource "aws_route_table_association" "public_subnet_asso" {
 subnet_id      = aws_subnet.subnet1.id
 route_table_id = aws_route_table.public.id
}

