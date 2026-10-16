# Module Block: Create a single Compute Engine instance
module "myvm" {
  source  = "../modules/vm_instance"
  vm_name = "vm-test1"
  machine_type = "e2-small"
  zone = "us-central1-a"
  network = "default"
  subnetwork = "default"
}