provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "t2" {
    instance_type = "t2.micro"
    ami = "ami-0c7217cdde317cfec"
    subnet_id = "subnet-0b2ce972549fd18b4"
  
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "pratiknalawades309031999s3"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

