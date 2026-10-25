resource "google_project_service" "apis" {
  for_each = {
    for api in flatten([
      for key, value in var.enable_apis : [
        for service in value.service : {
          id                  = "${key}-${service}"
          project             = value.project
          service             = service
          disable_on_destroy  = value.disable_on_destroy
        }
      ]
    ]) : api.id => api
  }

  project             = each.value.project
  service             = each.value.service
  disable_on_destroy  = each.value.disable_on_destroy
}
