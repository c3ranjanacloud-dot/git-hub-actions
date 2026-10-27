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
