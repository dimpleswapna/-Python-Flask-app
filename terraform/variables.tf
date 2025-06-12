variable "aws_region" {
  type        = string
  description = "The AWS region to deploy to"
  default     = "ap-south-1"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name"
  default     = "devops-cluster"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to use"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs"
}
