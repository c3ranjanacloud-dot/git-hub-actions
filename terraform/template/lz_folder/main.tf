module "project_folder" {
    source = "../../modules/folder"
    folder_name = var.folder_name
    org_id = var.org_id
}
module "host_folder" {
    source = "../../modules/folder"
    folder_name = var.host_folder_name
    org_id = var.org_id
}
