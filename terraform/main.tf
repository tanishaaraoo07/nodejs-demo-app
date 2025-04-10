terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "nodejs_app" {
  name         = "nodejs-app:latest"
  keep_locally = true

  build {
    context = ".."
    dockerfile = "../Dockerfile"
  }
}

resource "docker_container" "nodejs_container" {
  image = docker_image.nodejs_app.image_id
  name  = "nodejs-terraform-container"
  
  ports {
    internal = 3000
    external = 3000
  }
}

output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nodejs_container.id
}

output "container_name" {
  description = "Name of the Docker container"
  value       = docker_container.nodejs_container.name
}

output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nodejs_app.id
}