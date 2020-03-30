pipeline {
  agent any
  stage('Checkout') {
    steps {
		sh 'python3 -m pip install flask'
    }
  }
  stages {
    stage('run') {
      steps {
        sh 'python ./python/dronelauncher_python.py'
      }
    }
  }
}