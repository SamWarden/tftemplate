output "webserver_docker_containers" {
  description = "The created docker containers with webservers"
  value = [
    for webserver in docker_container.webserver : {
      id   = webserver.id
      name = webserver.name
    }
  ]
}
