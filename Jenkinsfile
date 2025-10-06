pipeline {
    agent {
        docker {
            image 'ubuntu:20.04'
        }
    }

    stages {
        stage('Prepare environment') {
            steps {
                sh 'whoami'
                sh 'apt-get update --yes'
                sh 'apt-get install --yes build-essential'
            }
        }
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
