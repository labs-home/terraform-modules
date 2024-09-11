resource "cloudflare_record" "vps_record" {
  zone_id    = data.cloudflare_zone.zone.id
  type       = "A"
  name       = "${hcloud_server.vps_server.name}.cloud"
  value      = hcloud_server.vps_server.ipv4_address
  comment    = "${hcloud_server.vps_server.name} record - created by Terraform."
  depends_on = [hcloud_server.vps_server]
}

resource "cloudflare_record" "vps_record_two" {
  count      = var.cloudflare_second_record != "" ? 1 : 0
  zone_id    = data.cloudflare_zone.zone.id
  type       = "A"
  name       = var.cloudflare_second_record
  value      = hcloud_server.vps_server.ipv4_address
  comment    = "${hcloud_server.vps_server.name} second record - created by Terraform."
  depends_on = [hcloud_server.vps_server]
}