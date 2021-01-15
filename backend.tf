terraform {
  backend "s3" {
    bucket         = "banco-abc-tf-eks-state-dev"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "banco-abc-tf-eks-state-lock-dev"
  }
}
