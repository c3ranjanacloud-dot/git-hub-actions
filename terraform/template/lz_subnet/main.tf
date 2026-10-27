module "subnet" {
  source = "../modules/networking/subnet"
  host_project_id = module.project-host.project_id
  subnet_name     = "dev-infra-subnet"
  region          = "asia-south1"
  network_id      = module.vpc_network.network_link
  ip_cidr_range   = "10.10.0.0/24"
}
