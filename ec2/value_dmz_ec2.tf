locals {
  ami = {

  }
  ebs_device_encrypted = {
    encrypted  = false
    kms_key_id = null
  }

  dmz_ec2 = [
        {
      tf_identifier        = "dmz-bastion-01"
      ec2_name             = "ww-an2-ec2-lsj-h-dmz-bastion-01"
      ami                  = "ami-0077c9ac12a980b1f"
      instance_type        = "t3.micro"
      subnet_name          = "ww-an2-sbn-lsj-h-dmz-lb-2a"
      security_group_names = ["ww-an2-scg-lsj-h-dmz-ec2-bastion-01"]
      root_block_device = [{
        ebs_block            = ["gp3", "51"]
        delte_on_termination = true
        ebs_block_device     = local.ebs_device_encrypted
      }]
      #user_data = local.user_data
      # private_ip = "10.3.1.101"
      public_ip  = true
      # iam_instance_profile = "role_name"
    },
    {
      tf_identifier        = "dmz-web-01"
      ec2_name             = "ww-an2-ec2-lsj-h-dmz-web-01"
      ami                  = "ami-0077c9ac12a980b1f"
      instance_type        = "m5.2xlarge"
      subnet_name          = "ww-an2-sbn-lsj-h-dmz-wb-2a"
      security_group_names = ["ww-an2-scg-lsj-h-dmz-ec2-web-01"]
      root_block_device = [{
        ebs_block            = ["gp3", "51"]
        delte_on_termination = true
        ebs_block_device     = local.ebs_device_encrypted
      }]
      #user_data = local.user_data
      # private_ip = "10.3.1.101"
      public_ip  = false
      # iam_instance_profile = "role_name"
    },
    {
      tf_identifier        = "dmz-monitoring-01"
      ec2_name             = "ww-an2-ec2-lsj-h-dmz-monitoring-01"
      ami                  = "ami-0077c9ac12a980b1f"
      instance_type        = "t3.micro"
      subnet_name          = "ww-an2-sbn-lsj-h-dmz-wb-2c"
      security_group_names = ["ww-an2-scg-lsj-h-dmz-ec2-monitoring-01"]
      root_block_device = [{
        ebs_block            = ["gp3", "51"]
        delte_on_termination = true
        ebs_block_device     = local.ebs_device_encrypted
      }]
      #user_data = local.user_data
      # private_ip = "10.3.1.101"
      public_ip  = false
      # iam_instance_profile = "role_name"
    },
  ]
}