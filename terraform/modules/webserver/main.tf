resource "docker_image" "python" {
  name = "python:3.13-slim-bookworm"
}

resource "docker_container" "webserver" {
  name  = var.name
  image = docker_image.python.image_id

  command = [
    "python",
    "-m",
    "http.server",
    "8080",
  ]

  ports {
    internal = 8080
  }
}
