node('node2_web') {
checkout scm
  def customImage = docker.build("hedgedoc:${params.CHOICE}")
}