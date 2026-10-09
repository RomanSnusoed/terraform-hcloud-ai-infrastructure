resource "hcloud_ssh_key" "this" {
  name       = var.ssh_key_name
  public_key = var.ssh_public_key
}

resource "hcloud_server" "this" {
  name        = var.name
  image       = var.image
  server_type = var.server_type
  location    = var.location

  ssh_keys     = [hcloud_ssh_key.this.id]
  firewall_ids = [var.firewall_id]
  user_data    = var.user_data

  labels = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "hcloud_server_network" "this" {
  server_id = hcloud_server.this.id
  subnet_id = var.subnet_id
}