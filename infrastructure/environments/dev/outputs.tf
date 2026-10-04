output "network_id" {
  value = module.network.network_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "firewall_id" {
  value = module.firewall.firewall_id
}
output "server_id" {
  value = module.server.server_id
}

output "server_ipv4" {
  value = module.server.ipv4_address
}

output "server_private_ip" {
  value = module.server.private_ip
}