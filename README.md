# DevOps Pipeline Project

This project demonstrates a CI/CD pipeline using Jenkins, Docker, Terraform, and Kubernetes on AWS.

## Features

- CI/CD with Jenkins
- Dockerized Node.js App
- Deployment to AWS EKS
- Infrastructure provisioned via Terraform

## Structure

- app/: Application code
- Dockerfile: Build container
- Jenkinsfile: CI/CD automation
- terraform/: Infrastructure code
- k8s/: Kubernetes deployment

## Pipeline Flow

1. Push code to GitHub
2. Jenkins builds and pushes Docker image
3. Jenkins applies Kubernetes manifests to EKS
