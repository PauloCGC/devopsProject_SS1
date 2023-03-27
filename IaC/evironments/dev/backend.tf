terraform {
  backend "s3" {
    bucket = "devops-project-ss1"
    dynamodb_table = "devops-project-ss1-table"
    region = "us-east-1"
    key = "terraform-state/terraform.tfstate"
    encrypt = true
  }
}

