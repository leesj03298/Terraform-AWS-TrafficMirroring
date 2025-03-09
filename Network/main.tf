module "dmz_vpc" {
  source       = "../Module/network/"
  vpc          = local.dmz_vpc.vpc
  subnets      = local.dmz_vpc.subnets
  route_tables = local.dmz_vpc.route_tables
}


# module "app_vpc" {
#   source       = "../../module/network/"
#   vpc          = local.app_vpc.vpc
#   subnets      = local.app_vpc.subnets
#   route_tables = local.app_vpc.route_tables
# }