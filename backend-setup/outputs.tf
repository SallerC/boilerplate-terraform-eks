# outputs.tf

output "s3-state-bucket" {
  value = aws_s3_bucket.terraform-state-storage-s3.bucket
}

output "dynamo-table-lock" {
  value = aws_dynamodb_table.dynamodb-terraform-state-lock.name
}
