variable "webservers_count" {
  type        = number
  default     = 1
  description = "Count of the created docker containers with the webserver application"

  validation {
    condition     = var.webservers_count > 0
    error_message = "Webservers count must be greater than 0"
  }

  validation {
    condition     = var.webservers_count < 10
    error_message = "Webservers count must be less than 10"
  }
}

variable "webserver_name" {
  type        = string
  default     = "test-python-webserver"
  description = "The name of created docker containers with the webserver application"

  validation {
    condition     = length(var.webserver_name) > 0
    error_message = "Webservers name must be greater than 0"
  }

  validation {
    condition     = length(var.webserver_name) <= 50
    error_message = "Webservers name must be less than 50"
  }

  validation {
    condition     = length(regexall("[^\\w-]", var.webserver_name)) == 0
    error_message = "Webservers name must contain only letters, numbers, and hyphens"
  }
}
