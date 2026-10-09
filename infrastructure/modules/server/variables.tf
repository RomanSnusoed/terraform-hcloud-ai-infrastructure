variable "name" {
  description = "Name of the Hetzner Cloud server"
  type        = string
}

variable "image" {
  description = "Operating system image"
  type        = string
  default     = "ubuntu-24.04"
}

variable "server_type" {
  description = "Hetzner Cloud server type"
  type        = string
  default     = "cx23"
}

variable "location" {
  description = "Hetzner Cloud location"
  type        = string
  default     = "fsn1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "firewall_id" {
  description = "Firewall attached to the server"
  type        = number
}

variable "subnet_id" {
  description = "Private subnet attached to the server"
  type        = string
}

variable "ssh_key_name" {
  description = "Name of the SSH key in Hetzner Cloud"
  type        = string
}

variable "ssh_public_key" {
  description = "Public SSH key used to access the server"
  type        = string
}

variable "user_data" {
  description = "Cloud-init configuration executed during server creation"
  type        = string
}