pipeline {
  parameters {
    choice(name: 'VERSION', choices: ['latest', '1.8.2', '1.8.1'], description: 'Pick the VERSION')
    }
  agent { dockerfile true }
    stages {
      stage('Cloning Git') {
        steps {
          git 'https://github.com/romalap/hedgedoc.git'
      }
    }
      stage('build docker') {
        steps{
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