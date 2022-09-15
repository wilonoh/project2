#  vpc
variable "region-name" {
    description = "making the region a variable"
  type    = string
  default = "eu-west-2"
}

  variable "vpc-cidr-block" {
    description = "making vpc cidr block a variable"
  type    = string
  default = "10.10.0.0/16"
  }

variable "vpc-instance-tenancy" {
    description = "making vpc instance tenancy a variable"
  type    = string
  default = "default"
  }

    variable "enable_dns_hostnames" {
    description = "making enable dns hostnames a variable"
  type    = bool
  default = true
  }

  variable "enable_dns_support" {
    description = "making enable dns support a variable"
  type    = bool
  default = true
  }

  # public subnets
   variable "Test-public-sub1-cidr-block" {
    description = "making test public sub1 cidr block a variable"
  type    = string
  default = "10.10.1.0/24"
  }

variable "Test-public-sub1-availability-zone" {
    description = "making test public sub1 availability zone a variable"
  type    = string
  default = "eu-west-2a"
  }

  variable "test-public-sub2-cidr-block" {
    description = "making public sub2 cidr block a variable"
  type    = string
  default = "10.10.2.0/24"
  }

 variable "test-public-sub2-availability-zone" {
    description = "making public sub2 availability zone a variable"
  type    = string
  default = "eu-west-2b"
  }
 
 
# private subnets

 variable "Test-priv-sub1-cidr-block" {
  description = "making test private subnet1 cidr block a variable"
  type    = string
  default = "10.10.3.0/24"
  }


  # variable "Test-priv-sub1-availability-zone" {
  # description = "making test private subnet1 availability zone a variable"
  # type    = string
  # default = "eu-west-2a"
  # }

  variable "Test-priv-sub1-availability-zone" {
  description = "making test private subnet1 availability zone a variable"
  type    = string
  default = "eu-west-2c"
  }

  variable "Test-priv-sub2-cidr-block" {
  description = "making test private subnet2 cidr block a variable"
  type    = string
  default = "10.10.4.0/24"
  }

  # variable "Test-priv-sub2-availability-zone" {
  # description = "making test private subnet2 availability zone a variable"
  # type    = string
  # default = "eu-west-2b"
  # }


  variable "Test-priv-sub2-availability-zone" {
  description = "making test private subnet2 availability zone a variable"
  type    = string
  default = "eu-west-2a"
  }

# destination cidr block
variable "public_route_destination_cidr_block" {
    description = "making public route destination cidr block a variable"
    default = "0.0.0.0/0"
    type    = string
}

# ec2
variable "ec2_ami" {
    description = "making ec2 ami a variable"
    default = "ami-05a8c865b4de3b127"
    type    = string
}

variable "key_name" {
    description = "making key name a variable"
    default = "first_key_pair"
    type    = string
}

variable "instance_type" {
    description = "making instance type a variable"
    default = "t2.micro"
    type    = string
}

# variable "associate_public_ip_address1" {
#     description = "making associate public ip address a variable"
#     default = true
#     type    = bool
# }

variable "associate_public_ip_address2" {
    description = "making associate public ip address a variable"
    default = true
    type    = bool
}

variable "ec2_count" {
  description = "making ec2 count a variable"
  default = "2"
  type    = number
}

variable "ec2_tag" {
  description = "making ec2 tag a variable"
  default = "Test-server"
  type = string
}

#elastic ip
variable "private_ip_association" {
    description = "making private ip associate a variable"
    default = "10.0.0.12"
    type    = string
}