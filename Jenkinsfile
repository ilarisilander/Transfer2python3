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
        sh 'python ./python/dronelauncher_python.py'
      }
    }
  }
}