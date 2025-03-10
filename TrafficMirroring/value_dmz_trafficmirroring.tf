# locals {
#   dmz_securitygroups = [
#     {
#       vpc_name           = "ww-an2-vpc-lsj-h-dmz-01"
#       securitygroup_name = "ww-an2-scg-lsj-h-dmz-ec2-bastion-01"
#       description        = "Bastion"
#       rules = [
#         {
#           protocol    = "tcp"
#           portrange   = 22
#           source      = "115.136.118.23/32"
#           description = "H"
#         }
#       ]
#     },
#     {
#       vpc_name           = "ww-an2-vpc-lsj-h-dmz-01"
#       securitygroup_name = "ww-an2-scg-lsj-h-dmz-ec2-web-01"
#       description        = "WEB"
#       rules = [
#         {
#           protocol    = "tcp"
#           portrange   = 22
#           source      = "ww-an2-scg-lsj-h-dmz-ec2-bastion-01"
#           description = "H"
#         },
#         {
#           protocol    = "tcp"
#           portrange   = 80
#           source      = "ww-an2-scg-lsj-h-dmz-nlb-web-01"
#           description = "H"
#         }
#       ]
#     },
#     {
#       vpc_name           = "ww-an2-vpc-lsj-h-dmz-01"
#       securitygroup_name = "ww-an2-scg-lsj-h-dmz-ec2-monitoring-01"
#       description        = "Monitoring"
#       rules = [
#         {
#           protocol    = "tcp"
#           portrange   = 22
#           source      = "ww-an2-scg-lsj-h-dmz-ec2-bastion-01"
#           description = "H"
#         },
#       ]
#     },
#     {
#       vpc_name           = "ww-an2-vpc-lsj-h-dmz-01"
#       securitygroup_name = "ww-an2-scg-lsj-h-dmz-nlb-web-01"
#       description        = "NLB WEB"
#       rules = [
#         {
#           protocol    = "tcp"
#           portrange   = 80
#           source      = "115.136.118.23/32"
#           description = "H"
#         }
#       ]
#     }
#   ]
# }
