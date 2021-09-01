pipeline {
      agent {
        node {
            label 'node2_web'
        }
    }
  parameters {
    choice(name: 'VERSION', choices: ['latest', '1.8.2', '1.8.1'], description: 'Pick the VERSION')
    }
    stages {
        stage('Clone repository') { 
            steps { 
                sh "rm -rf *"
                git url: 'git@github.com:romalap/jenkins_test.git',
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