pipeline {
    agent { label 'local_ubuntu' }

    options {
        shell '/usr/bin/bash'
    }

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