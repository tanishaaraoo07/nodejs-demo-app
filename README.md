# nodejs-demo-app

# NodeJS Demo Application

## Project Overview
This repository demonstrates DevOps best practices using a simple Node.js application with automated CI/CD pipelines, infrastructure as code, and proper version control.

## Technology Stack
- Node.js
- Docker
- Jenkins for CI/CD
- Terraform for infrastructure provisioning
- GitHub for version control

## Repository Structure
- `/app.js` - Main application file
- `/package.json` - Node.js dependencies
- `/test.js` - Automated tests
- `/Dockerfile` - Docker image configuration
- `/Jenkinsfile` - CI/CD pipeline definition
- `/terraform/` - Infrastructure as Code files

## Jenkins Pipeline

This repository includes a Jenkins pipeline configuration (Jenkinsfile) that:

- Uses Docker to create a consistent build environment
- Runs the following stages:
  1. Checkout: Gets the latest code
  2. Install: Installs dependencies
  3. Test: Runs automated tests
  4. Build: Builds the application
  5. Deploy: Simulates deployment

The pipeline is triggered automatically on code commits.

### How to Use This Pipeline

1. Install Jenkins or use a cloud instance
2. Create a new Pipeline job in Jenkins
3. Configure it to use this repository
4. Set the "Script Path" to "Jenkinsfile"

## Infrastructure as Code with Terraform

This repository also includes Terraform configuration to provision a Docker container for the Node.js application:

- The `terraform/main.tf` file contains the configuration to build a Docker image and run a container
- Use `terraform init`, `terraform plan`, and `terraform apply` to provision the infrastructure
- The container runs the Node.js application locally on port 3000

## Git Branching Strategy

This project follows a structured Git workflow:

- `main` branch: Production-ready code
- `dev` branch: Integration branch for development
- `feature/*` branches: Individual feature development

### Development Workflow
1. Clone the repository
2. Create a feature branch from dev
3. Make your changes
4. Submit a pull request to the dev branch
5. After review, changes are merged to main
6. Releases are tagged with version numbers

## Local Development Setup

```bash
# Clone the repository
git clone https://github.com/tanishaaraoo07/nodejs-demo-app.git

# Navigate to project directory
cd nodejs-demo-app

# Install dependencies
npm install

# Run the application
node app.js

# Run tests
npm test