provider "aws" {
  region     = "us-west-2"
  access_key = "AKIARYUH47AZ4IBFLTF2"
  secret_key = "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"
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_s3_bucket" "mys3" {
  bucket = "mydemo-attribute-001"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
