variable "name" {
  description = "Name of the Hetzner Cloud network"
  type        = string
}

variable "ip_range" {
  description = "Private IP range of the network"
  type        = string
}

variable "network_zone" {
  description = "Hetzner Cloud network zone"
  type        = string
  default     = "eu-central"
}

variable "subnet_ip_range" {
  description = "Private IP range of the subnet"
  type        = string
}