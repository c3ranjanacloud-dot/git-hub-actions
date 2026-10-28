module "shared_vpc" {
  source = "../../modules/networking/shared_vpc"
  host_project_id = var.host_project_id
  service_project_ids = var.service_project_id
  depends_on = [
    module.shared_vpc_network
  ]
}