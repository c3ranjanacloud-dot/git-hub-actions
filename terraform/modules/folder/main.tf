resource "google_folder" "folder" {
    display_name = var.folder_name
    parent = "organizations/${var.org_id}"
    deletion_protection = false
}
