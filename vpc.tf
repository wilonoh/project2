# vpc
resource "aws_vpc" "Prod-rock-VPC" {
  cidr_block       = var.vpc-cidr-block
  instance_tenancy = var.vpc-instance-tenancy
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support = var.enable_dns_support
  # region             = var.region-name
  tags = {
    Name = "Prod-rock-VPC"
  }
}

