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
            agent {
                docker{
                    image 'nodeimg'
                }
            }
            steps{
                sh 'npm --version'
            }
        }
    }
}