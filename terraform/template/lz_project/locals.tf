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
}