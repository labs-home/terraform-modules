resource "random_string" "suffix" {
  length  = 4
  special = false
  numeric = true
  lower   = true
}

data "hcloud_ssh_key" "default_ssh" {
  fingerprint = "01:85:22:06:d4:f2:b7:65:8f:27:3f:15:f1:ae:89:26"
}

resource "hcloud_server" "vps_server" {
  name        = "${var.node_role}-${var.node_location}-cloud-${random_string.suffix.result}"
  image       = "debian-12"
  location    = var.node_location
  server_type = var.node_type
  ssh_keys    = [data.hcloud_ssh_key.default_ssh.id]
  user_data   = var.node_bootstrap_script

  public_net {
    ipv4_enabled = var.node_ipv4
    ipv6_enabled = var.node_ipv4 ? false : true
  }
}
