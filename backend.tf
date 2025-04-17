terraform {
  backend "s3" {
    bucket = "test-terraform-state240497"

    key = "test/s3-test-terraform.state"

#    encrypt = "true"
    region  = "ap-southeast-1"
  }

  #Not adding required_version.  The idea is that if this is only applied/planned via jenkins, it should be the same
}