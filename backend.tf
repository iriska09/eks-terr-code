terraform {
  backend "s3" {
    bucket = "terraform-session-backend-yrys"
    key    = "eks-project/terraform.tfstate" //Path to your Remote Backend File (terraform.tfstate)
    region = "us-west-2"
  }
}