output "webserver_docker_container" {
  description = "The created docker container with the webserver"
  value = {
    id   = docker_container.webserver.id
    name = docker_container.webserver.name
  }
}
