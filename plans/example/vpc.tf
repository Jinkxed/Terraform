###############################################################
# Example VPC setup
# Utilizing terraform.tfvars file for Variables
###############################################################

variable "vpc-setting" {
  default = {}
}

module "vpc" {
  source = "modules/tf_aws_vpc"

  name            = "${lookup(var.vpc-setting, name)}"
  cidr            = "${lookup(var.vpc-setting, cidr)}"
  private_subnets = "${lookup(var.vpc-setting, private_subnets)}"
  public_subnets  = "${lookup(var.vpc-setting, public_subnets)}"
  azs             = "${lookup(var.vpc-setting, azs)}"
}
