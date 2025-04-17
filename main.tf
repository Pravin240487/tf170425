# main.tf
provider "aws" {
  region = "ap-southeast-1"
}

resource "random_pet" "this" {
  length = 2
}

resource "aws_s3_bucket" "example" {
  bucket = "${random_pet.this.id}-cloudops-bucket"  # Replace with a unique bucket name
  acl    = "private"

  tags = {
    "ApplicationService" = "SP"
  }
}
