pipeline {
    parameters {
    choice(name: 'VERSION', choices: ['latest', '1.8.2', '1.8.1'], description: 'Pick the VERSION')
    }
node('node2_web') {
  def hedgedoc = docker.build 'hedgedoc:latest'
}
}