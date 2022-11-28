output "ec2_public_dns" {
  description = "Public DNS"
  value = tomap({for i,instance in aws_instance.ec2_instance: i=>instance.public_dns})
}