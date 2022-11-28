data "aws_ec2_instance_type_offerings" "ec2_type_offerings" {
  for_each = toset(data.aws_availability_zones.ec2_azs.names)
  filter {
    name   = "instance-type"
    values = [var.ec2_type["qa"]]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone"
}