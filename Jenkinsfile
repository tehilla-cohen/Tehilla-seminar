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
        stage('Security') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target security --no-cache .'
            }
        }
        stage('back-end') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target back-end --no-cache .'
            }
        }
        stage('front-end') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target front-end --no-cache .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target deploy --no-cache .'
            }    
        }
        stage('Post') {
            steps {
                sh 'DOCKER_BUILDKIT=1 docker build -t tehilla:latest --target post --no-cache .'
            }
        }                
    }
}
