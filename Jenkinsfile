pipeline {
  parameters {
    choice(name: 'VERSION', choices: ['latest', '1.8.2', '1.8.1'], description: 'Pick the VERSION')
    }
  environment {
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git 'git@github.com:romalap/hedgedoc.git'
        credentialsId: "github"
      }
    }
    stage('Building image') {
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