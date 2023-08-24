output "host" {
  value = "http://localhost:${module.development_container.ports.0.external}"
}