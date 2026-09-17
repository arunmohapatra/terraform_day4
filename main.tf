data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }

  filter {
    name   = "state"
    values = ["available"]
  }
}

# --------------------------------------------------
# Create EC2 instance
# --------------------------------------------------


# module "web_server" {
#   source = "C:\\work\\terraform\\example\\ec2-modules"

#   ID   = data.aws_ami.amazon_linux.id
#   TYPE = var.instance_type
#   NAME = var.instance_name
#   ZONE = var.availability_zone
# }


# module "web_server" {
#   source = "git::https://github.com/arunmohapatra/ec2-modules.git"

#   ID   = data.aws_ami.amazon_linux.id
#   TYPE = var.instance_type
#   NAME = var.instance_name
#   ZONE = var.availability_zone
# }


module "web_server" {
  source  = "app.terraform.io/LTC_Terraform_Cohort/ec2-modules/ec2"
  version = "1.0.0"

  ID   = data.aws_ami.amazon_linux.id
  TYPE = var.instance_type
  NAME = var.instance_name
  ZONE = var.availability_zone
}

module "app_server" {
  source  = "app.terraform.io/LTC_Terraform_Cohort/ec2-modules/ec2"
  version = "1.0.0"

  ID   = data.aws_ami.amazon_linux.id
  TYPE = var.instance_type
  NAME = var.instance_name
  ZONE = var.availability_zone
}