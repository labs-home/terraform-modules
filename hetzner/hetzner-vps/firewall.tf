resource "hcloud_firewall" "vps_firewall" {
  name = "${hcloud_server.vps_server.name}-firewall"

  apply_to {
    server = hcloud_server.vps_server.id
  }

  dynamic "rule" {
    for_each = var.node_firewall_inbound_ports

    content {
      direction  = "in"
      protocol   = rule.value.protocol
      port       = rule.value.port
      source_ips = rule.value.source_ips
    }
  }
}