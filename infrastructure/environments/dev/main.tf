module "network" {
  source = "../../modules/network"

  name            = "ai-dev-network"
  ip_range        = "10.0.0.0/16"
  subnet_ip_range = "10.0.1.0/24"
}
module "firewall" {
  source = "../../modules/firewall"

  name = "ai-dev-firewall"

  ssh_source_ips = [
    "0.0.0.0/0",
    "::/0"
  ]
}
module "server" {
  source = "../../modules/server"

  name        = "ai-dev-server"
  environment = "dev"

  firewall_id = module.firewall.firewall_id
  subnet_id   = module.network.subnet_id

  ssh_key_name   = "ai-dev-key"
  ssh_public_key = file(pathexpand("~/.ssh/id_ed25519.pub"))

  user_data = file("${path.module}/../../cloud-init/cloud-init.yaml")
}