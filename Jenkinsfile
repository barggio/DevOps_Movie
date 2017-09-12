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
        sh '''docker login -u barggio -p $DOCKER_HUB
docker build -t barggio/popcorn:$BUILD_NUMBER .
docker push barggio/popcorn:$BUILD_NUMBER'''
      }
    }
    stage('Deploy to Kubernetes') {
        sh '''envsubst < deployment.yaml | kubectl apply -f -'''
    }
    stage('testing'){
      steps {
        sh '''docker run barggio/popcorn:$BUILD_NUMBER rails test'''
      }
    }
  }
}
