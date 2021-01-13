terraform {
  backend "s3" {
    bucket = "${var.client_name}-${var.project_name}-state-${var.environment}"
    key    = "terraform.tfstate"
    region = "us-west-2"
    encrypt = true
    dynamodb_table = "${var.client_name}-${var.project_name}-state-lock-${var.environment}"
  }
}
