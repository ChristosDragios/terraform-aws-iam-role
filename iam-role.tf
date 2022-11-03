resource "aws_iam_role" "beanstalk-service-role" {
  name               = var.iam_role_name
  description        = "Allows Elastic Beanstalk to create and manage AWS resources on your behalf."
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
  managed_policy_arns = var.managed_policy_arns
  inline_policy {
    name   = var.inline_policy_name
    policy = data.aws_iam_policy_document.permissions.json
  }
}