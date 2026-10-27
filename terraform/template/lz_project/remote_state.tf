data "terraform_remote_state" "folder" {
  backend = "gcs"

  config = {
    bucket = "gcp-infra-state-4c87"
    prefix = "env/dev-infra/folder"
  }
}