resource "aws_instance" "webapp_server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = data.terraform_remote_state.subnet.outputs.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_http.id, aws_security_group.allow_5000.id, aws_security_group.allow_ssh.id]
  iam_instance_profile   = aws_iam_instance_profile.webapp.name
  availability_zone      = var.availability_zone
  user_data = file("user_data.sh")
  root_block_device {
      volume_size           = var.root_volume_size
      volume_type           = var.root_volume_type
      delete_on_termination = var.root_volume_delete_on_termination
      encrypted             = var.root_volume_encrypted
  }
  tags =  {
    Name = var.name
  }
}





