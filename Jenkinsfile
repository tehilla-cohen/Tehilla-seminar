pipeline {
    agent any

    stages {
        stage('Pre-build stg') {
            steps {
                echo 'Prebuild actions..'
            }
        }
        stage('Build') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target build .'
            }
        }
        stage('Test') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t elad:latest --target test .'
            }
        }
        stage('Security') {
            steps {
                sh 'echo "docker build --target security"'
            }
        }
        stage('Back-end') {
            steps {
                sh 'echo "docker build --target backend"'
            }
        }
        stage('Front-end') {
            steps {
                sh 'docker build --target Front-end'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "docker build --target deploy"'
            }
        }
        stage('Post') {
            steps {
                echo "Clear env"
            }
        }
    }
}

