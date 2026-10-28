module "project" {
  source        = "../../modules/project"
  name          = var.project_name1
  project_id    = var.project_id1
  folder_id     = local.project_folder_id
  billing_acc   = var.billing_acc
}
module "project-test" {
  source        = "../../modules/project"
  name          = var.project_name2
  project_id    = var.project_id2
  folder_id     = local.project_folder_id
  billing_acc   = var.billing_acc
}

module "project-host" {
  source        = "../../modules/project"
  name          = var.host_project_name
  project_id    = var.host_project_id
  folder_id     = local.host_folder_id
  billing_acc   = var.billing_acc
}
# enable apis in  projects
module "enable_apis" {
  source = "../../modules/enable_apis"
  enable_apis = {
    for k, v in var.enable_apis : k => merge(v, { project = local.project_ids[k] })
  }
} 

