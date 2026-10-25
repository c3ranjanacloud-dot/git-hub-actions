resource "google_project" "project"{
    name = var.name
    project_id = var.project_id
    org_id = var.folder_id == null ? var.org_id : null
    folder_id = var.org_id == null ? var.folder_id : null
    billing_account = var.billing_acc
}