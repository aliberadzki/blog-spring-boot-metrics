pipeline {
  agent {
    docker {
      image 'maven:3.3.3'
    }

  }
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            sh 'mvn --version'
          }
        }

        stage('') {
          agent {
            docker {
              image 'alpine:3.8'
            }

          }
          steps {
            sh '''cat /etc/hosts \\
&& cat /etc/resolv.conf \\
&& nslookup sonar'''
          }
        }

      }
    }

  }
}