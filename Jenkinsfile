pipeline {
  agent {
    docker {
      image 'maven:3.3.3'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'mvn --version'
        sh 'mvn sonar:sonar -Dsonar.host.url=http://sonar:9000'
        sh 'cat /etc/hosts && cat /etc/resolv.conf && nslookup sonar'
      }
    }

  }
}