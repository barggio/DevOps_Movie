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
  }
}
