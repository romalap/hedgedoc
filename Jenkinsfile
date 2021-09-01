node('node2_web') {
  git 'https://github.com/romalap/hedgedoc.git' // checks out Dockerfile & Makefile
  def myEnv = docker.build 'hedgedoc:latest'
}