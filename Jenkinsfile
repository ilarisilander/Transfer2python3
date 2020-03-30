pipeline {
  agent any
  stages {
    stage('Checkout') {
        steps {
		    sh 'python3 -m pip install flask'
        }
    }
    stage('run') {
      steps {
        sh 'python3 ./python/dronelauncher_python.py'
      }
    }
  }
}