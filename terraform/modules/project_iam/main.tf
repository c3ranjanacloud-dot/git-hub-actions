locals{
  project_role_pairs = flatten(for project,bindings in var.project_bindings : [
    for binding in bindings: {
      project = project,
      role = binding.role,
      member = binding.member
    }
  ])
}
resource "google_project_iam_member" "project" {
  for_each = {
    for pair in local.project_role_pairs : {
      ${pair.project}-${pair.role}-{pair.member} => pair
    }
    project = each.value.project
    role    = each.value.role
    member  = each.value.member
}
}

