# Resource Block: Create a single Compute Engine instance
resource "google_compute_instance" "myvm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  boot_disk {
    initialize_params {
      image = var.os_image
      size = var.size
    }
  }
  metadata_startup_script = var.startup_script
  network_interface {
    subnetwork = var.subnetwork   
  }
}