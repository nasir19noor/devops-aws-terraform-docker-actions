resource "aws_instance" "webapp_server" {
  ami                    = "ami-0c1907b6d738188e5" 
  instance_type          = "t3.micro"
  subnet_id              = data.terraform_remote_state.subnet.outputs.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_http.id, aws_security_group.allow_5000.id, aws_security_group.allow_ssh.id]
  iam_instance_profile   = aws_iam_instance_profile.webapp.name
  availability_zone           = "ap-southeast-1a"
  user_data = file("user_data.sh")
  root_block_device {
      volume_size           = 50
      volume_type           = "gp3"
      delete_on_termination = true
      encrypted             = true
  }
  tags =  {
    Name = "webapp-server"
  }
}





