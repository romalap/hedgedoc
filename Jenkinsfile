node('node2_web') {
checkout scm
  def customImage = docker.build("hedgedoc:${params.VERSION}", "--build-arg VERSION=${params.VERSION}")
}