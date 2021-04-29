
# TODO: derive some inspiration from
#   * https://gitlab.com/nebulaworks/cust/gilead/cloudinfra/-/tree/master/tests/conftest/policy
#   * https://github.com/joatmon08/tdd-infrastructure/tree/main/tf-aws-ec2/test/unit
#   * https://github.com/terraform-linters/tflint
#   * https://github.com/terraform-linters/tflint-ruleset-azurerm


package main

deny[msg] {
  not input.resource.aws_instance.web
  msg = "Define an aws webserver instance"
}


deny[msg] {
  not input.resource.aws_autoscaling_group.my_asg.name
  msg = "Name the autoscaling group"
}
