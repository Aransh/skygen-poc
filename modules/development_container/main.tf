# Pulls the image
resource "docker_image" "nginx" {
  name = "nginx:1.25.2"
}

# Create a container
resource "docker_container" "container" {
  image = docker_image.nginx.image_id
  name  = var.env_name

  networks_advanced {
    name = var.network_name
  }

  ports {
    internal = 80
  }
}