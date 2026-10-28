module "project_iam" {
  source = "../../modules/project_iam"
  project_bindings = {
    (module.project.project_id) = [
      {
        role   = "roles/editor"
        member = "user:c3ranjanacloud@gmail.com"
      }
    ]
  }
}
module "project_iam_1" {
  source = "../../modules/project_iam"
  project_bindings = {
    (module.project-test.project_id) = [
      {
        role   = "roles/editor"
        member = "user:c3ranjanacloud@gmail.com"
      }
    ]
  }
}