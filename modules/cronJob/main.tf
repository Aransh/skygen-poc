# Pulls the image
resource "docker_image" "cron" {
  name = "cron:1.0.0"

  build {
    context = path.module
    tag     = ["cron:1.0.0"]
  }
}

# Create a container
resource "docker_container" "container" {
  image = docker_image.cron.image_id
  name  = "${var.env_name}_cron"

  networks_advanced {
    name = var.network_name
  }

  env = ["HOST=${var.host}",
         "PORT=${var.port}",
         "CRON_SCHED=${var.cron_schedule}"]

  volumes {
    container_path = "/output"
    host_path      = "${path.cwd}/${var.output_path}"
  }
}