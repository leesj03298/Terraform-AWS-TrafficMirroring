




resource "aws_ec2_traffic_mirror_target" "eni" {
  description          = "ENI target"
  network_interface_id = "eni-02cbe3884c106bb2b"
}

resource "aws_ec2_traffic_mirror_filter" "filter" {
  description      = "traffic mirror filter - terraform example"
  network_services = ["amazon-dns"]
}

resource "aws_ec2_traffic_mirror_session" "session" {
  description              = "traffic mirror session - terraform example"
  network_interface_id     = "eni-00303065729c54132"
  session_number           = 1
  traffic_mirror_filter_id = aws_ec2_traffic_mirror_filter.filter.id
  traffic_mirror_target_id = aws_ec2_traffic_mirror_target.eni.id
}