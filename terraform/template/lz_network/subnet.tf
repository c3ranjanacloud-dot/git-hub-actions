module "subnet" {
  source = "../../modules/networking/subnet"
  host_project_id = var.host_project_id
  subnet_name     = "infra-subnet"
  region          = "asia-south1"
  network_id      = module.shared_vpc_network.network_link
  ip_cidr_range   = "10.10.0.0/24"
}