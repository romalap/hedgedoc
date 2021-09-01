node('node2_web') {
  stage 'Building image'
  git 'https://github.com/romalap/hedgedoc.git' // checks out Dockerfile & Makefile
  def newApp = docker.build 'hedgedoc:latest'
}