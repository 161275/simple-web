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
                sh 'npm start'
            }
        }
    }
}