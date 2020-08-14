provider "aws" {
region  = "us-east-1"
access_key = ""
secret_key = ""
}

resource "aws_ecr_repository" "myrepo" {
  name                 = "my-ecr2-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
