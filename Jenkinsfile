pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Build Docker image
                    git clone https://github.com/Veenayadav02/docker.git
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Run tests if needed
                    docker build -t newimg .
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Deploy the Docker image as needed
                    docker reun -it newimg
                }
            }
        }
    }

    post {
        success {
            // Do something on successful build
            echo 'Build successful!'

            // Clean up Docker images after successful build (optional)
            cleanWs()
            docker.image("my-java-app:${env.BUILD_ID}").remove()
        }
        failure {
            // Do something on build failure
            echo 'Build failed!'
        }
    }
}
 
