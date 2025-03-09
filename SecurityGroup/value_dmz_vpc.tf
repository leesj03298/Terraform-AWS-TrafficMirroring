locals {
  dmz_securitygroups = [
    {
      vpc_name = "ww-an2-vpc-lsj-h-dmz-01"
      securitygroup_name = "ww-an2-scg-lsj-h-dmz-ec2-web-01"
      description = "WEB"
      rules = [
        # {
        #   protocol = 
        #   portrange = 
        #   source = 
        #   description = 
        # }
      ]
    },
    {
      vpc_name = "ww-an2-vpc-lsj-h-dmz-01"
      securitygroup_name = "ww-an2-scg-lsj-h-dmz-ec2-monitoring-01"
      description = "Monitoring"
      rules = [
        # {
        #   protocol = 
        #   portrange = 
        #   source = 
        #   description = 
        # }
      ]
    },
    {
      vpc_name = "ww-an2-vpc-lsj-h-dmz-01"
      securitygroup_name = "ww-an2-scg-lsj-h-dmz-nlb-web-01"
      description = "NLB WEB"
      rules = [
        # {
        #   protocol = 
        #   portrange = 
        #   source = 
        #   description = 
        # }
      ]
    }
  ]
}
