node('node2_web') {
checkout scm
  def customImage = docker.build("--build-arg VERSION=${params.VERSION}", "hedgedoc:${params.VERSION}")
}