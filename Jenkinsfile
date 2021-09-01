node('node2_web') {
  git 'https://github.com/romalap/hedgedoc.git' // checks out Dockerfile & Makefile
  def hedgedoc = docker.build 'hedgedoc:latest'
}