module "network" {
  source = "../../modules/network"

  name            = "ai-dev-network"
  ip_range        = "10.0.0.0/16"
  subnet_ip_range = "10.0.1.0/24"
}