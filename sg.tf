# sg private ec2
resource "aws_security_group" "allow_http_ssh" {
  name        = "test servers security group"
  description = "enable http/ssh access on port 80/22"
  vpc_id      = aws_vpc.Prod-rock-VPC.id

  ingress {
    description      = "http access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "ssh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test servers security group"
  }
}

# # sg public ec2
# resource "aws_security_group" "allow_http_ssh_public" {
#   name        = "test servers security group"
#   description = "enable http/ssh access on port 80/22"
#   vpc_id      = aws_vpc.Prod-rock-VPC.id

#   ingress {
#     description      = "http access"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = [var.vpc-cidr-block]
#   }

#   ingress {
#     description      = "ssh access"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = [var.vpc-cidr-block]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "test servers security group"
#   }
# }