module "s3" {
  source          = "./Modules/s3"
  bucket_name     = var.bucket_name
  lifecycle_days  = var.lifecycle_days
  bucket_prefix   = var.bucket_prefix
  versioning      = var.versioning
  tags           = var.tags
  create         = var.create
  Enable_eventbridge = var.Enable_eventbridge
  enable_logging     = var.enable_logging
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::034362057200:role/prod-github-role"
  }
}
