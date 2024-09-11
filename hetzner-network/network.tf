resource "hcloud_network" "cloud_network" {
  name     = var.node_network_name
  ip_range = "${var.node_network_subnet}/${var.node_network_range == 8 ? var.node_network_range : var.node_network_range - 8}"
}

resource "hcloud_network_subnet" "cloud_subnet" {
  network_id   = hcloud_network.cloud_network.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "${var.node_network_subnet}/${var.node_network_range}"
}