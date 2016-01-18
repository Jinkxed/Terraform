
variable "keys" {
  default = {}
}

module "access_keys_development" {
  source = "modules/tf_aws_access_keys"

  key_name        = "${lookup(var.keys, development_key_name)}"
  key_path        = "${lookup(var.keys, development_key_path)}"
}

module "access_keys_qa" {
  source = "modules/tf_aws_access_keys"

  key_name        = "${lookup(var.keys, qa_key_name)}"
  key_path        = "${lookup(var.keys, qa_key_path)}"
}

module "access_keys_uat" {
  source = "modules/tf_aws_access_keys"

  key_name        = "${lookup(var.keys, uat_key_name)}"
  key_path        = "${lookup(var.keys, uat_key_path)}"
}

module "access_keys_production" {
  source = "modules/tf_aws_access_keys"

  key_name        = "${lookup(var.keys, production_key_name)}"
  key_path        = "${lookup(var.keys, production_key_path)}"
}
