# Module Block: Create a single Compute Engine instance
module "myvm" {
  source  = "../modules/vminstance"
  vminstance_name = "vm_test1"
  machine_type = "e2-small"
  zone = "us-central1-a"
  network = "default"
  subnetwork = "default"
}