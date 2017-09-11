pipeline {
  agent any

  environment {
      DOCKER_HUB = credentials("DOCKER_HUB")
  }

  stages {
    stage('Something to start') {
      steps {
        sh 'echo "I am testing this app"'
      }
    }
    stage('build docker') {
      steps {
        sh '''docker login -u barggio -p $DOCKER_HIB
docker build -t barggio/popcorn:$BUILD_NUMBER .'''
      }
    }
  }
}
