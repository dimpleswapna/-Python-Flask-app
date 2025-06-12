# End-to-End DevOps Project using Terraform, Jenkins, Docker, GitHub & EKS

## Overview
This project demonstrates a CI/CD pipeline that automates infrastructure provisioning and application deployment to AWS using Terraform, Jenkins, Docker, and Kubernetes.

## Features
- Provision EKS using Terraform
- Containerize a Python Flask App
- CI/CD pipeline using Jenkins
- Deploy to Kubernetes Cluster on AWS

## Architecture
1. Terraform provisions AWS infrastructure (EKS)
2. Jenkins automates build & deploy pipeline
3. Docker builds & pushes app image to ECR
4. Kubernetes deploys app to EKS

## Getting Started
1. Clone the repo
2. Configure Terraform variables
3. Deploy infrastructure using Terraform
4. Configure Jenkins pipeline
5. Trigger Jenkins build
6. Access app via LoadBalancer service

---
