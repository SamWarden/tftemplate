module "webserver" {
  source = "./modules/webserver"

  count = var.webservers_count
  name  = "${var.webserver_name}-${count.index}"
}
