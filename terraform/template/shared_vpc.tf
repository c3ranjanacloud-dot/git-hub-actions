module "vpc_network" {
  source = "../modules/networking/vpc_network"
  host_project_id = module.project-host.project_id
  network_name    = "shared-vpc"
  depends_on = [module.enable_apis]
}
module "subnet" {
  source = "../modules/networking/subnet"
  host_project_id = module.project-host.project_id
  subnet_name     = "dev-infra-subnet"
  region          = "asia-south1"
  network_id      = module.vpc_network.network_link
  ip_cidr_range   = "10.10.0.0/24"
}

module "shared_vpc" {
  source = "../modules/networking/shared_vpc"

  host_project_id = module.project-host.project_id

  service_project_ids = [
    module.project.project_id
  ]
  depends_on = [
    module.enable_apis,
    module.vpc_network
  ]
}
