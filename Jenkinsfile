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
        sh 'docker build -t popcorn:$BUILD_NUMBER .'
      }
    }
  }
}