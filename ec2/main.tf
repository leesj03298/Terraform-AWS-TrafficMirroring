module "dmz_vpc" {
  source = "../module/ec2/"
  ec2    = local.dmz_ec2
}


output "name" {
  value = module.dmz_vpc.ec2
}