output "webserver_docker_containers" {
  description = "The created docker containers with webservers"
  value = module.webserver.*.webserver_docker_container
}
