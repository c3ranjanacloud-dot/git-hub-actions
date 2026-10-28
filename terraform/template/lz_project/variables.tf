variable "existing_project_folder_id" {
  type    = string
  default = ""
}

variable "existing_host_folder_id" {
  type    = string
  default = ""
}
variable "project_name1" {
  type    = string
  default = ""
}
variable "project_id1" {
  type    = string
  default = ""
}
variable "project_name2" {
  type    = string
  default = ""
}
variable "project_id2" {
  type    = string
  default = ""
}
variable "billing_acc" {
  type    = string
  default = ""
}
variable "host_project_name" {
  type    = string
  default = ""
}
variable "host_project_id" {
  type    = string
  default = ""
}
variable "enable_apis" {
  description = "APIs to enable per project. Keys must match the keys in local.project_ids."
  type = map(object({
    service            = list(string)
    disable_on_destroy = optional(bool, false)
  }))
  default = {}
}

