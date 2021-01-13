provider "aws" {
  region = var.region
}
# terraform state file setup
# create an S3 bucket to store the state file in
resource "aws_s3_bucket" "terraform-state-storage-s3" {
    bucket = "${var.client_name}-${var.project_name}-state-${var.environment}"

    versioning {
      enabled = true
    }

    lifecycle {
      prevent_destroy = true
    }
}
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name = "${var.client_name}-${var.project_name}-state-lock-${var.environment}"
  hash_key = "LockID"
  read_capacity = 1
  write_capacity = 1

  attribute {
    name = "LockID"
    type = "S"
  }
}
