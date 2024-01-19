terraform {
  backend "s3" {
    bucket = "pratiknalawades309031999"
    region = "us-east-1"
    key = "pratik/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}