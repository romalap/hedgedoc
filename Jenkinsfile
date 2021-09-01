pipeline {
  parameters {
    choice(name: 'VERSION', choices: ['latest', '1.8.2', '1.8.1'], description: 'Pick the VERSION')
    }
  agent { label 'node2_web' }
    stages {
      stage('Clone Git') {
        steps {
          git url: 'https://github.com/romalap/hedgedoc.git'
          credentialsId: "github"
        }
      }
      stage('build docker') {
        steps {
          agent { 
            dockerfile {
              filename 'Dockerfile'
              dir 'build'
              label 'hedgedoc:latest'
              args '-v /tmp:/tmp'
            }
          }
        }
      }
    }
}