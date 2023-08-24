resource "docker_network" "private_network" {
  name = var.env_name
}