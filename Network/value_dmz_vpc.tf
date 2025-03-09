locals {
  dmz_vpc = {
    vpc = {
      tf_identifier           = "lsj-h-dmz-01"
      name                    = "ww-an2-vpc-lsj-h-dmz-01"
      cidr_block              = "10.10.0.0/24"
      create_internet_gateway = true
      internet_gateway_name   = "ww-an2-igw-lsj-h-dmz-01"
    }
    subnets = [
      {
        tf_identifier               = "api-h-dmz-tgw-2a"
        name                        = "ww-an2-sbn-lsj-h-dmz-tgw-2a"
        cidr_block                  = "10.10.0.0/28"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-h-dmz-tgw"
      },
      {
        tf_identifier               = "api-h-dmz-tgw-2c"
        name                        = "ww-an2-sbn-lsj-h-dmz-tgw-2c"
        cidr_block                  = "10.10.0.16/28"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-h-dmz-tgw"
      },
      {
        tf_identifier               = "api-h-dmz-lb-2a"
        name                        = "ww-an2-sbn-lsj-h-dmz-lb-2a"
        cidr_block                  = "10.10.0.32/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-h-dmz-lb"
      },
      {
        tf_identifier               = "api-h-dmz-lb-2c"
        name                        = "ww-an2-sbn-lsj-h-dmz-lb-2c"
        cidr_block                  = "10.10.0.64/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-h-dmz-lb"
      },
      {
        tf_identifier               = "api-h-dmz-wb-2a"
        name                        = "ww-an2-sbn-lsj-h-dmz-wb-2a"
        cidr_block                  = "10.10.0.96/27"
        availability_zone           = "ap-northeast-2a"
        asso_route_table_identifier = "api-h-dmz-wb"
      },
      {
        tf_identifier               = "api-h-dmz-wb-2c"
        name                        = "ww-an2-sbn-lsj-h-dmz-wb-2c"
        cidr_block                  = "10.10.0.128/27"
        availability_zone           = "ap-northeast-2c"
        asso_route_table_identifier = "api-h-dmz-wb"
      },
    ]
    route_tables = [
      {
        tf_identifier = "api-h-dmz-tgw"
        name          = "ww-an2-rtb-lsj-h-dmz-tgw"
      },
      {
        tf_identifier = "api-h-dmz-lb"
        name          = "ww-an2-rtb-lsj-h-dmz-lb"
      },
      {
        tf_identifier = "api-h-dmz-wb"
        name          = "ww-an2-rtb-lsj-h-dmz-wb"
      },
    ]
  }
}