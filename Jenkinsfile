pipeline {
  agent {
    docker {
      image 'maven:3.3.3'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'cat /etc/hosts && cat /etc/resolv.conf && ping -w 5 tmpl_sonar.cindy_default'
        sh 'mvn --version'
      }
    }

  }
}