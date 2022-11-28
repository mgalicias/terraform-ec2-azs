resource "aws_instance" "ec2_instance" {
  ami = data.aws_ami.ec2_ami.id
  instance_type = var.ec2_type["qa"]
  user_data = file("${path.module}/install-webserver.sh")
  vpc_security_group_ids = [ aws_security_group.allow_web.id ]
  for_each = toset(keys({
    for i,azs in data.aws_ec2_instance_type_offerings.ec2_type_offerings: 
      i => azs.instance_types if lenght(azs.instance_types) != 0
  }))

  tags = {
    "Name" = "ec2-test-${each.value}"
  }
}