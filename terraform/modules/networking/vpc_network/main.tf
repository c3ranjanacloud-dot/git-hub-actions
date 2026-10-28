resource "google_compute_network" "vpc" {
  name                    = var.network_name
  project                 = var.network_project_id
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
}