pipeline {
    agent { label 'local_ubuntu' }
    stages {
        stage('Build') {
            steps {
                make
            }
        }
        stage('Run Ok') {
            steps {
                sh './main 1 2'
            }
        }
        stage('Run Fail') {
            steps {
                sh './main'
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