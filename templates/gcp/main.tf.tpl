resource "google_compute_firewall" "default" {

  name = "terraform-firewall"

  network = var.network

  allow {

    protocol = "tcp"

    ports = [for p in var.ingress_ports : tostring(p)]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vm" {

  count = var.instance_count

  name = "${var.tag_name}-${count.index + 1}"

  machine_type = var.instance_type

  zone = var.gcp_zone

  boot_disk {

    initialize_params {

      image = var.machine_image
    }
  }

  network_interface {

    network = var.network

    subnetwork = var.subnetwork

    access_config {}
  }

  metadata = {
    ssh-keys = "ubuntu:${var.public_key}"
  }
}