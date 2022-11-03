output "assume_policy" {
  value = data.aws_iam_policy_document.assume_role_policy.json
}

output "policy-permissios" {
  value = data.aws_iam_policy_document.permissions.json
}

output "iam_role_name" {
  value = var.iam_role_name
}

output "inline_policy_name" {
  value = var.inline_policy_name
}

output "managed_policy_arns" {
  value = var.managed_policy_arns
}