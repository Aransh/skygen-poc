terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
    }
  }
  backend "s3" {
    bucket = "hackaton-skygen-state"
    key    = "skygen.tfstate"
    region = "il-central-1"
    skip_region_validation = true #Why is Tel-Aviv not recognized??
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}