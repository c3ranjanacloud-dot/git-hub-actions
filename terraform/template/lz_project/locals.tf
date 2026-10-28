locals {
  project_folder_id = (
    var.existing_project_folder_id != ""
    ? var.existing_project_folder_id
    : data.terraform_remote_state.folder.outputs.project_folder_id
  )

  host_folder_id = (
    var.existing_host_folder_id != ""
    ? var.existing_host_folder_id
    : data.terraform_remote_state.folder.outputs.host_folder_id
  )
  project_ids = {
    "proj-dev"    = module.project.project_id
    "proj-test"    = module.project-test.project_id
    "proj-host" = module.project-host.project_id
  }

}