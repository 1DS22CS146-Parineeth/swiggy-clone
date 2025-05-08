
pipeline {
  agent any
  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/1DS22CS146-Parineeth/swiggy-clone'
      }
    }
    stage('Build Docker') {
      steps {
        sh 'docker build -t swiggy-app .'
      }
    }
    stage('Deploy to Kubernetes') {
      steps {
        sh 'kubectl apply -f deployment.yaml'
      }
    }
  }
}
