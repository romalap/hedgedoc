node('node2_web') {
checkout scm
  def VERSION = '${params.VERSION}'
  def customImage = docker.build("hedgedoc:${VERSION}", "--build-arg VERSION=${VERSION}", ".")
}