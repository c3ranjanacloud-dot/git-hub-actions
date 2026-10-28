# enable apis in  projects
module "enable_apis" {
  source = "../../modules/enable_apis"
  enable_apis = {
    for k, v in var.enable_apis : k => merge(v, { project = local.project_ids[k] })
  }
} 