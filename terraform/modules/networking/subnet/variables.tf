variable "host_project_id" {
  description = "GCP host project ID where the subnet will be created"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}

variable "region" {
  description = "GCP region where the subnet will be created"
  type        = string
}

variable "network_id" {
  description = "ID or self-link of the VPC network"
  type        = string
}

variable "ip_cidr_range" {
  description = "Primary IPv4 CIDR range for the subnet"
  type        = string
}