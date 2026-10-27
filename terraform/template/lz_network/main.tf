module "vpc_network" {
  source = "../modules/networking/vpc_network"
  host_project_id = module.project-host.project_id
  network_name    = "shared-vpc"
  depends_on = [module.enable_apis]
}