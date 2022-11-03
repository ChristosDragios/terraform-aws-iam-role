terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "christos-infra"

    workspaces {
      name = "terraform-aws-beanstalk"
    }
  }
}