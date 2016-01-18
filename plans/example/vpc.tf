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
  # Bug seems to be here, these variables must be static like:
  # private_subnets = "10.0.1.0/24,10.0.2.0/24,10.0.3.0/24"
  # public_subnets = "10.0.101.0/24,10.0.102.0/24,10.0.103.0/24"
  private_subnets = "${lookup(var.vpc-setting, private_subnets)}"
  public_subnets  = "${lookup(var.vpc-setting, public_subnets)}"
  azs             = "${lookup(var.vpc-setting, azs)}"
}
