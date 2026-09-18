terraform {
  required_version = ">= 1.6.0"

  cloud {

    organization = "LTC_Terraform_Cohort"

    workspaces {
      name    = "RemoteTerraformRun_modules"
      #name    = "UsingAPI"
      project = "Cohort_LTC_Proj"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}