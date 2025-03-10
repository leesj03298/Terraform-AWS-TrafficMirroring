module "dmz_ec2" {
  source = "../module/ec2/"
  ec2    = local.dmz_ec2
}


output "ec2-public_ip" { value = { for key, value in module.dmz_ec2.ec2 : key => value.public_ip } } 
output "ec2-private_ip" { value = { for key, value in module.dmz_ec2.ec2 : key => value.private_ip } } 