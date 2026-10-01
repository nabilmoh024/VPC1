terraform {
  required_version = ">= 1.10.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.66"
    }
  }

  backend "s3" {
    bucket              = "vpc1-terraform-state-956614409594-ap-south-1"
    key                 = "vpc/terraform.tfstate"
    region              = "ap-south-1"
    encrypt             = true
    use_lockfile        = true
    allowed_account_ids = ["956614409594"]
  }
}
