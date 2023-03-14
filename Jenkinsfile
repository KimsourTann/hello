pipeline {
    agent any
    
    stages {
        stage('Build Docker image') {
            steps {
             
                sh "whoami"
                sh "pwd"
                sh "hostname"
                sh "docker build -t tannkimsour/helloworld:$BUILD_NUMBER ."
            }
        }
        
        stage('Push Docker image to Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: '<dockerhub-creds-id>', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
                    sh "docker push tannkimsour/helloworld:$BUILD_NUMBER"
                }
            }
        }
    }
}
