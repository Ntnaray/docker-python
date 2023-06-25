pipeline {
    agents any
    environment {
        DOCKERHUB_CREDENTIALS = credentials ('swamy-docker-hub')
    }
    stages {
    stage('Build'){
        step {
            sh 'docker build -t swamy877/Python_Django_New :latest . '
        }

    }
    stage('Login'){
        step {
            sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'

        }
    }
    stage('Push'){
        step{
            sh 'docker push swamy877/Python_Django_New:latest '
        }
    }
    post {
        always{
            sh 'docker logout '
        }
    }


    }
}