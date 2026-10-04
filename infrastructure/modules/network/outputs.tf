output "network_id" {
  description = "ID of the created Hetzner Cloud network"
  value       = hcloud_network.this.id
}

output "subnet_id" {
  description = "ID of the created Hetzner Cloud subnet"
  value       = hcloud_network_subnet.this.id
}