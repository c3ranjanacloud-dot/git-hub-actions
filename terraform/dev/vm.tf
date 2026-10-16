# Module Block: Create a Compute Engine instance with service account attached
module "myvm" {
  source  = "../modules/vm_instance"
  vm_name = "vm-test1"
  machine_type = "e2-small"
  zone = "us-central1-a"
  network = "default"
  subnetwork = "default"
  service_account_email = "718237122299-compute@developer.gserviceaccount.com"
  sa_scopes =["cloud-platform"]
}