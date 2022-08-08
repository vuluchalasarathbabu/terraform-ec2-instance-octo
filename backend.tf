terraform {
  backend "s3" {
    bucket         = "saratth-bucket-1"
    key            = "test/test.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}