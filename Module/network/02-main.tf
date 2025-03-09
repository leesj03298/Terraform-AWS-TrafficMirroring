#### VPC ###################################################################################
resource "aws_vpc" "default" {
  cidr_block           = var.vpc.cidr_block
  enable_dns_hostnames = var.vpc.enable_dns_hostnames
  enable_dns_support   = var.vpc.enable_dns_support
  instance_tenancy     = var.vpc.instance_tenancy
  tags = {
    Name = var.vpc.name
  }
}

#### Internet Gateway ######################################################################
resource "aws_internet_gateway" "default" {
  for_each = { for vpc in toset([var.vpc]) : vpc.tf_identifier => vpc
  if vpc.create_internet_gateway == true && length(aws_vpc.default) != 0 }
  vpc_id = aws_vpc.default.id
  tags = {
    Name = var.vpc.internet_gateway_name
  }
  depends_on = [aws_vpc.default]
}

#### Subnet ################################################################################
resource "aws_subnet" "default" {
  for_each                = { for sbn in var.subnets : sbn.tf_identifier => sbn }
  vpc_id                  = aws_vpc.default.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = false
  tags = {
    Name = each.value.name
  }
  depends_on = [aws_vpc.default]
}
locals {
  sbn_id = { for key, sbn in aws_subnet.default : sbn.tags["Name"] => sbn.id }
}
#### Route Table ###########################################################################
resource "aws_route_table" "default" {
  for_each = { for rtb in var.route_tables : rtb.tf_identifier => rtb }
  vpc_id   = aws_vpc.default.id
  tags = {
    Name = each.value.name
  }
  depends_on = [aws_vpc.default]
}

locals {
  rtb_id = { for key, rtb in aws_route_table.default : rtb.tags["Name"] => rtb.id }
}
#### Route Table Association ###############################################################
resource "aws_route_table_association" "drs_route_table_association" {
  for_each = { for sbn in var.subnets : sbn.name => sbn
  if contains(keys(aws_route_table.default), sbn.asso_route_table_identifier) }
  subnet_id      = aws_subnet.default[each.value.tf_identifier].id
  route_table_id = aws_route_table.default[each.value.asso_route_table_identifier].id
  depends_on     = [aws_subnet.default, aws_route_table.default]
}
