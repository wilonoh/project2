# public subnets
resource "aws_subnet" "Test-public-sub1" {
  vpc_id     = aws_vpc.Prod-rock-VPC.id
  cidr_block = var.Test-public-sub1-cidr-block
  availability_zone = var.Test-public-sub1-availability-zone

  tags = {
    Name = "Test-public-sub1"
  }
}

resource "aws_subnet" "test-public-sub2" {
  vpc_id     = aws_vpc.Prod-rock-VPC.id
  cidr_block = var.test-public-sub2-cidr-block
  availability_zone = var.test-public-sub2-availability-zone
  tags = {
    Name = "test-public-sub2"
  }
}

# private subnets
resource "aws_subnet" "Test-priv-sub1" {
  vpc_id     = aws_vpc.Prod-rock-VPC.id
  cidr_block = var.Test-priv-sub1-cidr-block
  availability_zone = var.Test-priv-sub1-availability-zone

  tags = {
    Name = "Test-priv-sub1"
  }
}

resource "aws_subnet" "Test-priv-sub2" {
  vpc_id     = aws_vpc.Prod-rock-VPC.id
  cidr_block = var.Test-priv-sub2-cidr-block
  availability_zone = var.Test-priv-sub2-availability-zone

  tags = {
    Name = "Test-priv-sub2"
  }
}

# public route table
resource "aws_route_table" "Test-pub-route-table" {
  vpc_id = aws_vpc.Prod-rock-VPC.id

  tags = {
    Name = "Test-pub-route-table"
  }
}

# private route table
resource "aws_route_table" "Test-priv-route-table" {
  vpc_id = aws_vpc.Prod-rock-VPC.id

  tags = {
    Name = "Test-priv-route-table"
  }
}

# private route association
resource "aws_route_table_association" "Test-priv-sub1" {
  subnet_id      = aws_subnet.Test-priv-sub1.id
  route_table_id = aws_route_table.Test-priv-route-table.id
}

resource "aws_route_table_association" "Test-priv-sub2" {
  subnet_id      = aws_subnet.Test-priv-sub2.id
  route_table_id = aws_route_table.Test-priv-route-table.id
}

# public route association
resource "aws_route_table_association" "Test-public-sub1" {
  subnet_id      = aws_subnet.Test-public-sub1.id
  route_table_id = aws_route_table.Test-pub-route-table.id
}

resource "aws_route_table_association" "test-public-sub2" {
  subnet_id      = aws_subnet.test-public-sub2.id
  route_table_id = aws_route_table.Test-pub-route-table.id
}

