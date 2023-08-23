# CI/CD Pipeline to deploy Kubernetes Applications using Terraform, EKS, and Jenkins

## Infrastructure

- Using Terraform I create an environment while allowing users to modify variables to desired instance type, environment type, name, aws region etc.
- Terraform state is stored on AWS S3 bucket
- Environment depends on EC2 instances running Jenkins server with basic software setup installed via bash script, allowing us to run jobs on them later

## Pipeline

- Each push to Github repository triggers Jenkins pipeline
- Jenkinsfile is a declarative pipeline script with two stages: Creating EKS Cluster and Deploy to that cluster
- Terraform creates VPC and EKS using terraform-aws-modules
- With kubernetes installed on EC2 instance we apply deployment and service

## Tech Stack
Terraform, Jenkins, Kubernetes, EC2, EKS, S3, CI/CD

## Project visualization 
<img width="830" alt="image" src="https://github.com/capmichal/jenkins-terraform-pipeline/assets/130446782/b0fe0e93-18f7-4a00-b680-c2005b6f128a">
