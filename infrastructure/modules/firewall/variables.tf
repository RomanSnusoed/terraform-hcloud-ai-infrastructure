variable "name" {
  description = "Name of the Hetzner Cloud firewall"
  type        = string
}

variable "ssh_source_ips" {
  description = "CIDR ranges allowed to access SSH"
  type        = list(string)
}