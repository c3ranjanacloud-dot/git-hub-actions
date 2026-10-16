provider "google" {
  project     = "project-3cb084e1-9bda-4c87-baf"

}
terraform {
backend "gcs" {
    bucket = "gcp-infra-state-4c87"
    prefix = "env/dev"
  }  
}
