resource "aws_internet_gateway" "Test-igw" {
  vpc_id = aws_vpc.Prod-rock-VPC.id

  tags = {
    Name = "Test-igw"
  }
}

# igw route association
# resource "aws_route_table_association" "Test-igw-association" {
#   gateway_id     = aws_internet_gateway.Test-igw.id
#   route_table_id = aws_route_table.Test-pub-route-table.id
#   subnet_id      = aws_subnet.Test-public-sub1.id
#   #destination_cidr_block = var.public_route_destination_cidr_block
# }
# resource "aws_route_table_association" "Test-public-sub1" {
#   subnet_id      = aws_subnet.Test-public-sub1.id
#   route_table_id = aws_route_table.Test-pub-route-table.id
#   destination_cidr_block = var.public_route_destination_cidr_block
# }

# public route
resource "aws_route" "public_route" {
  route_table_id            = aws_route_table.Test-pub-route-table.id
  destination_cidr_block    = var.public_route_destination_cidr_block
  gateway_id                = aws_internet_gateway.Test-igw.id
}

