variable "managed_policy_arns" {
  type = list(string)
  description = "The AWS managed policy ARNs to be attached to the created role"
  default = [
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier",
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier",
    "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker",
  ]
}

variable "inline_policy_name" {
  type = string
  description = "The name for the inline policy"
}

variable "iam_role_name" {
  type = string
  description = "The name for the created role"
}