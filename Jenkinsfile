pipeline {
    parameters {
    choice(name: 'VERSION', choices: ['latest', '1.8.2', '1.8.1'], description: 'Pick the VERSION')
    }
    agent none
    stages {
      node ('node2_web') {
        stage('build docker') {
          agent { dockerfile true } 
          steps {
            dockerfile {
              filename 'Dockerfile'
              dir 'build'
              label 'hedgedoc'
              args '-v /tmp:/tmp'
            }
          }
        }
      }
    }
}
