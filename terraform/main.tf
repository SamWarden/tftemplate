resource "docker_image" "python" {
  name = "python:3.13-slim-bookworm"
}

resource "docker_container" "webserver" {
  count = var.webservers_count

  name  = "${var.webserver_name}-${count.index}"
  image = docker_image.python.image_id

  command = [
    "python",
    "-m",
    "http.server",
    "8080",
  ]

  ports {
    internal = 8080
    external = 8080 + count.index
  }
}
