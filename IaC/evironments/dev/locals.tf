locals {
  environment              = "dev"
  region                   = "us-east-1"
  project                  = "DevOps-Project-SoftServe-1"
}
 locals {
  tags = {
    environment   = local.environment
    project       = local.project
  }
}