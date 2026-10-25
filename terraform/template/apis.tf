module "enable_apis" {
  source = "./modules/enable_apis"

  enable_apis = {
    "proj-a" = {
      project            = module.project-a.
      service            = ["compute.googleapis.com", "iam.googleapis.com"]
      disable_on_destroy = false
    }
  }
}
