pipeline {
    agent { label 'local_ubuntu' }
    stages {
        stage('Build') {
            steps {
                sh 'make'
            }
        }
        stage('Test') {
            steps {
                sh './test.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo Deploy done'
            }
        }
    }
}