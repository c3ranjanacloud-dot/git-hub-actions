# Input Variables
# GCP Project
variable "gcp_project" {
  description = "Project in which GCP Resources to be created"
  type = string
  default = ""
}

# GCP Region
variable "gcp_region1" {
  description = "Region in which GCP Resources to be created"
  type = string
  default = ""
}

# GCP Compute Engine Machine Type
variable "machine_type" {
  description = "Compute Engine Machine Type"
  type = string
  default = ""
}

variable "network" {
  description = "Network to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Subnet to deploy to. Only one of network or subnetwork should be specified."
  type        = string
  default     = "default"
}

variable "zone" {
  type        = string
  description = "Zone where the instances should be created. If not specified, instances will be spread across available zones in the region."
  default     = null
}

variable "vm_name" {
  type        = string
  description = "VM Instance Name"
  default     = ""
}
variable "os_image"{
  type        = string
  description = "os image"
  default     = "debian-cloud/debian-12"  
}

variable "size"{
    type        = number
    description = "boot disk size"
    default     = 20
}
variable "startup_script" {
  type        = string
  description = "Optional path to a custom startup script file."
  default     = null 
}

