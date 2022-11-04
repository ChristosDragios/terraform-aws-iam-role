# terraform-aws-iam-role
This configuration can be used to create a custom IAM Role in AWS, in order to be assigned to AWS ElasticBeanstalk to have the proper permissions for calling other AWS ressources.

## Variables
## Mandadotory: 
"iam_role_name" 
"inline_policy_name"

Please define the above variables by providing the variable name and value within the module block as attributes.
EG: iam_role_name = "role-name"

## Optionals:
"managed_policy_arns"

The above variable is already configured as per AWS documentation to have the minimum AWS managed policy assigned to the role. You can modify if extra permissions are needed.
https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-instanceprofile.html 

## Outputs:
"assume_policy"
"policy-permissios"
"iam_role_name"
"managed_policy_arns"

You can check the above outputs with the following command: terraform output 

## GitActions
A basic automation pipeline has been configured to automatically update the release tag on evey git push with a tag. 
EG: git tag v0.1.1 + git push origin v0.1.1