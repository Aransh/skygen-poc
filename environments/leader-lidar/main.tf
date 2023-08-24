module "development_network" {
  source = "../../modules/development_network"

  env_name = var.env_name
}

module "development_container" {
  source = "../../modules/development_container"

  env_name     = var.env_name
  network_name = module.development_network.network_name
}

module "cronJob" {
  source = "../../modules/cronJob"

  env_name     = var.env_name
  host         = module.development_container.host
  port         = module.development_container.ports.0.internal
  network_name = module.development_network.network_name
  output_path  = "output"
}