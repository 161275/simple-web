pipeline {
    agent any
    // environment {

    // }
    stages {
        stage('docker'){
            steps {
                sh 'docker build -t nodeimg .'
            }
        }
        stage('run-app'){
            steps{
                sh 'docker run -p 8000:8080 nodeimg'
            }
        }
    }
}