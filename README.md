# terraform-aws-iam-role
This configuration can be used to create a custom IAM Role in AWS, in order to be assigned to AWS ElasticBeanstalk to have the proper permissions for calling other AWS ressources.

## Variables
## Mandadotory: 
"iam_role_name" 
"inline_policy_name"

Please define the above variables by:
1) Assign a default value in the variable block
2) create a .tfvars file and assign a value
3) pass a value via the CLI. EG: terraform apply -var="iam_role_name"="XX"

## Optionals:
"managed_policy_arns"

The above variable is already configured as per AWS documentation to have the minimum AWS managed policy assigned to the role. You can modify if extra permissions are needed.
https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-instanceprofile.html 
a
## Outputs:
"assume_policy"
"policy-permissios"
"iam_role_name"
"managed_policy_arns"

You can check the above outputs with the following command: terraform output 
