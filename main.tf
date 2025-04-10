terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = "nginx_server"
  image = docker_image.nginx.name
  must_run = true

  ports {
    internal = 80
    external = 8080
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    host_path      = "${abspath("${path.module}/html")}"
    container_path = "/usr/share/nginx/html"
  }

  remove_volumes = true
  restart        = "no"
  start          = true
}
