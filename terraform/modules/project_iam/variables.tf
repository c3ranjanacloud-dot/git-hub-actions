/*variable "project_bindings" {
  default = {
    "dev-project-id" = [
      { role = "roles/editor", member = "group:dev-team@example.com" },
      { role = "roles/viewer", member = "group:qa-team@example.com" }
    ]

    "logging-project-id" = [
      { role = "roles/logging.admin", member = "group:ops-team@example.com" }
    ]
  }
}*/
variable "project_bindings" {
    type = map(list(object({
        role=string,
        member=string
        })))
}