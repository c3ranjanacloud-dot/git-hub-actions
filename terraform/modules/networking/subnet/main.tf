resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  project       = var.host_project_id
  region        = var.region
  network       = var.network_id
  ip_cidr_range = var.ip_cidr_range
}