pipeline {
    agent {
        docker {
            image 'node:14'
            args '-p 3000:3000'
        }
    }
    
    environment {
        // Set environment variables if needed
        NODE_ENV = 'production'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Get code from GitHub repository
                checkout scm
            }
        }
        
        stage('Install Dependencies') {
            steps {
                // Install app dependencies
                sh 'npm install'
            }
        }
        
        stage('Run Tests') {
            steps {
                // Run tests if available
                sh 'npm test'
            }
        }
        
        stage('Build') {
            steps {
                // Build the application
                sh 'npm run build || echo "No build script found, continuing..."'
            }
        }
        
        stage('Docker Build') {
            steps {
                // Build Docker image
                sh 'docker build -t nodejs-demo-app:${BUILD_NUMBER} .'
            }
        }
        
        stage('Deploy') {
            steps {
                // Deployment steps
                sh 'echo "Deploying application..."'
                // In a real scenario, you would deploy to your target environment
                // Example: sh 'docker run -d -p 3000:3000 --name nodejs-app nodejs-demo-app:${BUILD_NUMBER}'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline execution failed!'
        }
        always {
            echo 'Cleaning up workspace'
            // Clean up Docker containers/images if needed
        }
    }
}