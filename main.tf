data "aws_caller_identity" "current" {}

locals {
  name_prefix = "tf-${split("/", "${data.aws_caller_identity.current.arn}")[3]}"
  #name_prefix = split("/", "${data.aws_caller_identity.current.arn}")
}

output "local_name_prefix" {
  value       = local.name_prefix
  description = "local name prefix derived from the AWS caller identity ARN"
}