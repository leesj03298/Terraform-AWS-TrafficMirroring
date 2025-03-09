module "dmz_vpc" {
  source       = "../Module/securitygroup/"
  securitygroups     = local.dmz_securitygroups
}


# module "app_vpc" {
#   source       = "../../module/network/"
#   vpc          = local.app_vpc.vpc
#   subnets      = local.app_vpc.subnets
#   route_tables = local.app_vpc.route_tables
# }