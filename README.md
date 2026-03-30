# Linked to World - End-to-End DevOps Project

A complete DevOps project demonstrating CI/CD pipeline, containerization, and infrastructure as code.

## Project Overview
This project automates the deployment of a web application using modern DevOps tools:
- **Jenkins** for CI/CD pipeline
- **Docker** for containerization
- **Terraform** for Infrastructure as Code (IaC)
- **GitHub** as version control

## Architecture
- Jenkins pipeline builds and tests the application
- Builds Docker image
- Deploys the containerized app

## Tech Stack
- Jenkins
- Docker & Docker Compose
- Terraform
- AWS (EC2)
- GitHub Actions (optional)

## Project Structure
├── Jenkinsfile                 # CI/CD Pipeline
├── main.tf                     # Terraform configuration
├── variables.tf
├── outputs.tf
├── docker-compose.yml          
├── README.md

## How to Run Locally
1. Clone the repository
2. Run `terraform init`
3. Run `terraform plan`
4. (Optional) Build and run with Docker

## What I Learned / Demonstrated
- Setting up complete CI/CD pipeline with Jenkins
- Containerizing applications with Docker
- Writing reusable Terraform code
- Infrastructure automation best practices
