node('node2_web') {
checkout scm
  def customImage = docker.build("hedgedoc:${VERSION}", "--build-arg VERSION=1.8.2", ".")
}