pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials ('swamy-docker-hub')
    }
    stages {
    stage('Build'){
        steps {
            sh 'docker build -t "swamy877/python_django_new:${env.BUILD_ID}" . '
        }
    }
    stage('Login'){
        steps {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'

        }
    }
    stage('Push'){
        steps{
            sh 'docker push "swamy877/python_django_new:${env.BUILD_ID}"'
        }
    }
    stage('Deploy') {
        steps {
            sh 'kubectl apply -f namespace.yaml'
            sh 'kubectl apply -f deployment.yaml'
            sh 'kubectl apply -f service.yaml'

        }
    }


    }
}

    
