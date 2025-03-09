variable "vpc" {
  description = "Create Resource : aws_vpc, aws_internet_gateway"
  type = object({
    tf_identifier           = string
    name                    = string
    cidr_block              = optional(string, null)
    enable_dns_hostnames    = optional(bool, true)
    enable_dns_support      = optional(bool, true)
    instance_tenancy        = optional(string, "default")
    create_internet_gateway = optional(bool, false)
    internet_gateway_name   = optional(string, null)
    tags                    = optional(map(string), null)
  })
}

variable "subnets" {
  description = "Create Resource : aws_subnet, aws_route_table_association"
  type = list(object({
    tf_identifier               = optional(string, null)
    name                        = optional(string, null)
    availability_zone           = optional(string, null)
    cidr_block                  = optional(string, null)
    asso_route_table_identifier = optional(string, null)
    tags                        = optional(map(string), null)
  }))
  default = []
}

variable "route_tables" {
  description = "Create Resource : aws_route_table"
  type = list(object({
    tf_identifier = optional(string, null)
    name          = optional(string, null)
    tags          = optional(map(string), null)
  }))
  default = []
}