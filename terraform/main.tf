provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "devops-eks"
  cluster_version = "1.24"
  subnets         = ["subnet-12345678", "subnet-87654321"]
  vpc_id          = "vpc-abc123"
  manage_aws_auth = true
  node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_type = "t3.medium"
    }
  }
}
