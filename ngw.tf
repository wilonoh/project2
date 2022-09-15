# elastic IP
resource "aws_eip" "eip" {
  vpc = true

  # instance                  = aws_instance.foo.id
  associate_with_private_ip = var.private_ip_association
  # depends_on                = [aws_internet_gateway.gw]
}

# ngw
resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.Test-priv-sub1.id

  tags = {
    Name = "ngw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.example]
}

# Route NAT GW with private Route table
resource "aws_route" "ngw-association_with-priv_route_table" {
  route_table_id         = aws_route_table.Test-priv-route-table.id
  nat_gateway_id         = aws_nat_gateway.ngw.id
  destination_cidr_block = "0.0.0.0/0"
}