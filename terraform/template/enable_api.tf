# enable apis in  projects
module "enable_apis" {
  source = "../modules/enable_apis"
  enable_apis = {
    "proj-a" = {
      project            = module.project.project_id   
      service            = ["cloudbilling.googleapis.com", "compute.googleapis.com", "iam.googleapis.com"]
      disable_on_destroy = false
    },
    "proj-host" = {
      project            = module.project-host.project_id   
      service            = ["cloudbilling.googleapis.com", "compute.googleapis.com", "iam.googleapis.com"]
      disable_on_destroy = false
    }
  }
} 