terraform {
  backend "s3" {
    bucket         = "iac-terraform-state-prod"
    key            = "terraform.tfstate"
    region         = "ca-central-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock"
  }
}
