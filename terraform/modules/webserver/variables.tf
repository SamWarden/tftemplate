variable "name" {
  type        = string
  description = "The name of created docker container with the webserver application"

  validation {
    condition     = length(var.name) > 0
    error_message = "Webserver name must be greater than 0"
  }

  validation {
    condition     = length(var.name) <= 50
    error_message = "Webserver name must be less than 50"
  }

  validation {
    condition     = length(regexall("[^\\w-]", var.name)) == 0
    error_message = "Webserver name must contain only letters, numbers, and hyphens"
  }
}
