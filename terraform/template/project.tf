module "project" {
  source  = "../modules/project"
  name = "dev-infra-project"
  project_id = "dev-infra-project44622"
  folder_id = module.folder1.folder_id
  billing_acc = "01939C-8BBB1C-484643"
}
# enable apis
module "enable_apis" {
  source = "../modules/enable_apis"
  enable_apis = {
    "proj-a" = {
      project            = module.project.project_id   
      service            = ["cloudbilling.googleapis.com", "compute.googleapis.com", "iam.googleapis.com"]
      disable_on_destroy = false
    }
  }
} 