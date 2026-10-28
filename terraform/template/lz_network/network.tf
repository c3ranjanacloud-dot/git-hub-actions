module "shared_vpc_network" {
  source = "../../modules/networking/vpc_network"
  network_project_id = var.network_project_id
  network_name    = "shared-vpc"
}