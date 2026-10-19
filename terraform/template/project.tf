module "project" {
  source  = "../modules/project"
  name = "dev-infra-project"
  project_id = "dev-infra-project44622"
  folder_id = module.folder1.folder_id
}