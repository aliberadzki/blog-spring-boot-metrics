pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          agent {
            docker {
              image 'maven:3.3.3'
            }

          }
          steps {
            sh 'mvn --version'
            sh 'mvn sonar:sonar -Dsonar.host.url=http://sonar:9000'
          }
        }

        stage('error') {
          agent {
            docker {
              image 'alpine:3.8'
              args '--network=cindy_default'
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