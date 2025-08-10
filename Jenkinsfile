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
                    reuseNode true
                }
            }
            steps{
                sh 'npm --version'
                sh 'npm install'
                sh 'npm run build'
            }
        }
    }
}