terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  credentials = file("service-account-key.json")

  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_compute_instance" "t-compute-instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.boot_disk_image
    }
    
  }

  network_interface {
    network = google_compute_network.t-compute-network.name
  }
}

resource "google_compute_network" "t-compute-network" {
    name = var.network_interface
  }

data "google_compute_image" "t-compute-image" {
  family  = var.source_image_family
  project = var.source_image_project
}

resource "google_compute_instance_group" "t-compute-instance-group" {
  name        = var.instance_group_name

  instances = [
    google_compute_instance.t-compute-instance.id
  ]

  zone = var.zone
}
