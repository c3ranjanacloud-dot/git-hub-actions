resource "google_project_service" "apis" {
  for_each = var.enable_apis
}
