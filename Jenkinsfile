pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials ('swamy-docker-hub')
    }
    stages {
    stage('Build'){
        steps {
            sh 'docker build -t swamy877/python_django_new:latest . '
        }
    }
    stage('Login'){
        steps {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'

        }
    }
    stage('Push'){
        steps{
            sh 'docker push swamy877/Python_Django_New:latest '
        }
    }
    }
    post {
        always {
            sh 'docker logout '
        }
    }
}

    
