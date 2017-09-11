pipeline {
  agent any
  stages {
    stage('Something to start') {
      steps {
        sh 'echo "I am testing this app"'
      }
    }
    stage('build docker') {
      steps {
        sh '''docker login -u barggio -p _____
docker build -t barggio/popcorn:$BUILD_NUMBER .'''
      }
    }
  }
}