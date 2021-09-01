node('node2_web') {
  git 'https://github.com/romalap/hedgedoc.git' // checks out Dockerfile & Makefile
  def newApp = docker.build 'mycorp/hedgedoc:latest'
}