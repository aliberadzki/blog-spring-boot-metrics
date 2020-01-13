pipeline {
  agent {
    docker {
      image 'maven:3.3.3'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'cat /etc/hosts && cat /etc/resolv.conf && nslookup sonar'
        sh 'mvn --version'
      }
    }

  }
}