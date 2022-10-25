pipeline {
    agent any

    stages {
        stage('Pre-build stg') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target pre-build --no-cache .'
            }
        }
        stage('Build') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target build --no-cache .'
            }
        }
        stage('Test') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target test --no-cache .'
            }
        }
    }
}
