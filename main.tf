provider "google" {
  project = "sandbox-service-386004"
  region  = "us-central1"
  zone    = "us-central1-a"
}

resource google_compute_instance "vm_instance" {
  name         = "vm-liverpool"
  zone         = "us-central1"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image    = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
      # Allocate a one-to-one NAT IP to the instance
    }
  }
}

/*
resource "local_file" "foo" {
  content   = "Hello World!"
  filename  = "delete_me.txt"
}

output "filename" {
  value   = local_file.foo.filename
}*/
