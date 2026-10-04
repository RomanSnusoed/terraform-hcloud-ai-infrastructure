output "server_id" {
  description = "ID of the created server"
  value       = hcloud_server.this.id
}

output "ipv4_address" {
  description = "Public IPv4 address of the server"
  value       = hcloud_server.this.ipv4_address
}

output "private_ip" {
  description = "Private IP address of the server"
  value       = hcloud_server_network.this.ip
}