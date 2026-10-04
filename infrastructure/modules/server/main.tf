resource "hcloud_server" "this" {
  name        = var.name
  image       = var.image
  server_type = var.server_type
  location    = var.location

  firewall_ids = [var.firewall_id]

  labels = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "hcloud_server_network" "this" {
  server_id = hcloud_server.this.id
  subnet_id = var.subnet_id
}