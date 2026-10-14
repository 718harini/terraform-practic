terraform {
  backend "s3" {
    bucket       = "harini-day4-bucket-7c45ceb42cc5e616b1a223f7ce"
    key          = "day4/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}