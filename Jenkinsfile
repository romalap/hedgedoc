node('node2_web') {
checkout scm
  def customImage = docker.build("hedgedoc:${env.BUILD_ID}")
}