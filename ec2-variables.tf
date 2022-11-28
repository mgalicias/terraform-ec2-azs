variable "ec2_region" {
  description = "EC2 Region"
  type = map(string)
  default = {
    "ohio" = "us-east-2",
    "virginia" = "us-east-1"
  }
}

variable "ec2_type" {
  description = "EC2 type"
  type = map(string)
  default = {
    "qa" = "t3.micro",
    "dev" = "t3.small",
    "prod" = "t3.large"
  }
}