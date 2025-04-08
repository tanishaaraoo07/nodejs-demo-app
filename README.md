# nodejs-demo-app

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