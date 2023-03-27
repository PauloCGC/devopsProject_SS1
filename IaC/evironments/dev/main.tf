module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.0.0"

  name = "devops-project-ss1-vpc"
  cidr = "10.20.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.20.10.0/24", "10.20.11.0/24"]
  public_subnets  = ["10.20.1.0/24", "10.20.2.0/24"]

  enable_nat_gateway      = true
  map_public_ip_on_launch = true

  //Required for VPC endpoints
  enable_dns_hostnames    = true
  enable_dns_support      = true

  tags                 = local.tags
}