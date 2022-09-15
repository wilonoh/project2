# EC2 Instance
resource "aws_instance" "Test-server" {
  ami           = var.ec2_ami # eu-west-2
  instance_type = var.instance_type
  key_name = var.key_name
  count = var.ec2_count
  vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
  associate_public_ip_address = var.associate_public_ip_address2
  subnet_id = aws_subnet.Test-public-sub1.id
   
    tags = {
     name = "${var.ec2_tag}-${count.index+1}"
   }
}

# resource "aws_instance" "Test-server2" {
#   ami           = var.ec2_ami # eu-west-2
#   instance_type = var.instance_type
#   key_name = var.key_name
#   vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]
#   associate_public_ip_address = var.associate_public_ip_address1
#   subnet_id = aws_subnet.Test-priv-sub1.id
   
#     tags = {
#      name = "Test-server2"
#    }
# }