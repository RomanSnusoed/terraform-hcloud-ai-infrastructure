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