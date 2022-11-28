data "aws_availability_zones" "ec2_azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}