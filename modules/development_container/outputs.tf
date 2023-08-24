output "host" {
  value = docker_container.container.name
}

output "ports" {
  value = docker_container.container.ports
}