module "project" {
  source  = "../modules/project"
  name = "dev-infra-project"
  project_id = "dev-infra-project44622"
  folder_id = module.folder1.folder_id
  billing_acc = "01939C-8BBB1C-484643"
}
module "project-host" {
  source  = "../modules/project"
  name = "hosting-project"
  project_id = "host-project44622"
  folder_id = module.folder1.folder_id
  billing_acc = "01939C-8BBB1C-484643"
}
